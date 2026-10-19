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

import 'package:firebase_messaging/firebase_messaging.dart';

Future<String?> getFCMToken() async {
  // Add your function code here!
  try {
    final messaging = FirebaseMessaging.instance;

    // Request permission (REQUIRED on Web)
    final settings = await messaging.requestPermission();

    if (settings.authorizationStatus != AuthorizationStatus.authorized) {
      print('Notification permission not granted');
      return null;
    }

    final token = await messaging.getToken();
    print('FCM token: $token');

    return token;
  } catch (e) {
    print('FCM error: $e');
    return null;
  }
}
