// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports other custom actions

import 'package:shared_preferences/shared_preferences.dart';

import '../../auth/firebase_auth/auth_util.dart';

import 'dart:ui';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> startBackgroundTracking() async {
  final service = FlutterBackgroundService();

  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'tracking_channel',
    'Location Tracking',
    description: 'Background location tracking',
    importance: Importance.low,
  );

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  await flutterLocalNotificationsPlugin.initialize(
    const InitializationSettings(
      android: AndroidInitializationSettings('ic_bg_service_small'),
      iOS: DarwinInitializationSettings(),
    ),
  );

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: true,
      isForegroundMode: true,
      notificationChannelId: 'tracking_channel',
      initialNotificationTitle: 'Tracking Active',
      initialNotificationContent: 'Preparing location tracking...',
      foregroundServiceNotificationId: 999,
      foregroundServiceTypes: [
        AndroidForegroundType.location,
        AndroidForegroundType.dataSync,
      ],
    ),
    iosConfiguration: IosConfiguration(
      autoStart: true,
      onForeground: onStart,
    ),
  );

  final prefs = await SharedPreferences.getInstance();

  await service.startService();

  service.on('bgReady').listen((_) {
    service.invoke('setUserData', {
      'id': prefs.getString('user_id'),
      'mobile': prefs.getString('user_mobile'),
      'name': prefs.getString('user_name'),
      'outletId': prefs.getString('outlet_id'),
    });
  });

  Fluttertoast.showToast(msg: "✅ Background tracking started");
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  await Firebase.initializeApp();

  GeoPoint? lastSavedPoint;

  String? userName;
  String? userMobile;
  String? userId;
  String? outletId;

  /// RECEIVE USER DATA
  service.on('setUserData').listen((event) {
    if (event == null) return;
    userName = event['name'];
    userMobile = event['mobile'];
    userId = event['id'];
    outletId = event['outletId'];

    // Sync offline data when user data is received (service restart scenario)
    print("👤 User data received → checking for offline data to sync");
    startNetworkListener();
  });

  /// INFORM UI THAT BG IS READY
  service.invoke('bgReady');

  // Start network listener for auto-sync when connectivity changes
  Connectivity()
      .onConnectivityChanged
      .listen((List<ConnectivityResult> results) {
    if (results.isNotEmpty && results.first != ConnectivityResult.none) {
      print("🌐 Connectivity restored → syncing offline data");
      startNetworkListener();
    }
  });

  // Initial network check and sync when service starts
  print("🚀 Service started → checking for offline data to sync");
  startNetworkListener();

  // Periodic sync attempt every 60 seconds to catch any missed syncs
  Timer.periodic(const Duration(seconds: 60), (syncTimer) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult != ConnectivityResult.none) {
        print("🔄 Periodic sync check → attempting to sync offline data");
        await startNetworkListener();
      }
    } catch (e) {
      print("⚠️ Periodic sync check failed: $e");
    }
  });

  Timer.periodic(const Duration(seconds: 10), (timer) async {
    try {
      /// WAIT UNTIL USER DATA ARRIVES
      if (userId == null || outletId == null) {
        print("⏳ Waiting for user data...");
        return;
      }

      if (!await Geolocator.isLocationServiceEnabled()) {
        print("⚠️ Location services disabled");
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied ||
            permission == LocationPermission.deniedForever) {
          print("⚠️ Location permission denied");
          return;
        }
      }

      // Add timeout to prevent hanging on some devices
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        timeLimit: const Duration(seconds: 8),
      ).timeout(
        const Duration(seconds: 8),
        onTimeout: () {
          throw TimeoutException('Location request timed out');
        },
      );

      /// DISTANCE CHECK (only skip if we have a previous save AND distance is too small)
      if (lastSavedPoint != null) {
        final distance = Geolocator.distanceBetween(
          lastSavedPoint!.latitude,
          lastSavedPoint!.longitude,
          position.latitude,
          position.longitude,
        );
        if (distance < 400) {
          print("📍 Distance too small ($distance m), skipping save");
          return;
        }
      }

      lastSavedPoint = GeoPoint(position.latitude, position.longitude);

      // Get address with error handling
      String address = "Unknown location";
      try {
        final placemarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        ).timeout(const Duration(seconds: 5));

        if (placemarks.isNotEmpty) {
          final pm = placemarks.first;
          address =
              "${pm.street ?? ''}, ${pm.locality ?? ''}, ${pm.country ?? ''}"
                  .replaceAll(RegExp(r',\s*,+'), ',')
                  .replaceAll(RegExp(r'^,\s*'), '')
                  .replaceAll(RegExp(r',\s*$'), '');
          if (address.isEmpty || address == ',') {
            address =
                "${position.latitude.toStringAsFixed(6)}, ${position.longitude.toStringAsFixed(6)}";
          }
        } else {
          address =
              "${position.latitude.toStringAsFixed(6)}, ${position.longitude.toStringAsFixed(6)}";
        }
      } catch (e) {
        print("⚠️ Geocoding failed: $e, using coordinates");
        address =
            "${position.latitude.toStringAsFixed(6)}, ${position.longitude.toStringAsFixed(6)}";
      }

      final payload = {
        'lat': position.latitude,
        'lng': position.longitude,
        'address': address,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        'name': userName ?? '',
        'mobile': userMobile ?? '',
        'userID': userId ?? '',
        'outletId': outletId ?? '',
      };

      print(
          "📍 Attempting to save location: ${payload['lat']}, ${payload['lng']}");
      await saveWithOfflineFallback(payload);
    } catch (e, stackTrace) {
      print("❌ BG ERROR: $e");
      print("Stack trace: $stackTrace");
    }
  });
}

Future<void> saveWithOfflineFallback(Map<String, dynamic> data) async {
  // Check connectivity before attempting Firestore save
  try {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      print("🚫 No network → saving offline");
      await saveOffline(data);
      return;
    }

    // Verify internet connectivity
    try {
      final result = await InternetAddress.lookup('google.com')
          .timeout(const Duration(seconds: 3));
      if (result.isEmpty || result[0].rawAddress.isEmpty) {
        throw Exception('No internet connection');
      }
    } catch (e) {
      print("🚫 No internet → saving offline");
      await saveOffline(data);
      return;
    }
  } catch (e) {
    print("⚠️ Connectivity check failed → saving offline: $e");
    await saveOffline(data);
    return;
  }

  // Attempt Firestore save with timeout
  try {
    await FirebaseFirestore.instance
        .collection('OUTLET')
        .doc(data['outletId'])
        .collection('TRACKING_HISTORY')
        .add({
      'currentlocation': GeoPoint(data['lat'], data['lng']),
      'address': data['address'],
      'timestamp': DateTime.fromMillisecondsSinceEpoch(data['timestamp']),
      'name': data['name'],
      'mobile': data['mobile'],
      'userID': data['userID'],
    }).timeout(const Duration(seconds: 10));

    print("✅ Firestore saved successfully");
  } catch (e) {
    print("⚠️ Firestore failed → saving offline: $e");
    await saveOffline(data);
  }
}

Future<void> saveOffline(Map<String, dynamic> data) async {
  final prefs = await SharedPreferences.getInstance();
  final queue = prefs.getStringList('offline_tracking') ?? [];
  queue.add(jsonEncode(data));
  await prefs.setStringList('offline_tracking', queue);
}

Future<void> syncOfflineTracking() async {
  final prefs = await SharedPreferences.getInstance();
  final queue = prefs.getStringList('offline_tracking') ?? [];

  if (queue.isEmpty) {
    print("📦 No offline data to sync");
    return;
  }

  print("📦 Syncing ${queue.length} offline location(s)...");

  final remaining = <String>[];

  for (final item in queue) {
    try {
      final data = jsonDecode(item) as Map<String, dynamic>;

      await FirebaseFirestore.instance
          .collection('OUTLET')
          .doc(data['outletId'] as String)
          .collection('TRACKING_HISTORY')
          .add({
        'currentlocation': GeoPoint(
          data['lat'] as double,
          data['lng'] as double,
        ),
        'address': data['address'] as String,
        'timestamp': DateTime.fromMillisecondsSinceEpoch(
          data['timestamp'] as int,
        ),
        'name': data['name'] as String,
        'mobile': data['mobile'] as String,
        'userID': data['userID'] as String,
      }).timeout(const Duration(seconds: 10));

      print("✅ Synced offline location: ${data['lat']}, ${data['lng']}");
    } catch (e) {
      print("⚠️ Failed to sync offline item: $e");
      remaining.add(item);
    }
  }

  await prefs.setStringList('offline_tracking', remaining);
  if (remaining.isEmpty) {
    print("✅ All offline data synced successfully");
  } else {
    print("⚠️ ${remaining.length} item(s) failed to sync, will retry later");
  }
}

Future<void> startNetworkListener() async {
  try {
    // Check if there's any offline data first
    final prefs = await SharedPreferences.getInstance();
    final queue = prefs.getStringList('offline_tracking') ?? [];

    if (queue.isEmpty) {
      // No offline data to sync, skip network check
      return;
    }

    print(
        "📦 Found ${queue.length} offline location(s) → checking connectivity");

    final connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      print("🚫 No network (offline) → will sync when connection restored");
      return;
    }

    // Verify actual internet connectivity
    try {
      final result = await InternetAddress.lookup('google.com')
          .timeout(const Duration(seconds: 3));
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print("🌐 Internet available → syncing offline data");
        await syncOfflineTracking();
      } else {
        print("⚠️ Network connected but no internet → will retry later");
      }
    } catch (e) {
      print("⚠️ Network connected but no internet: $e → will retry later");
    }
  } catch (e) {
    print("⚠️ Network check failed: $e");
  }
}
