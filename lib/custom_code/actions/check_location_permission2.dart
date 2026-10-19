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

import 'package:permission_handler/permission_handler.dart';
import 'package:location/location.dart' hide PermissionStatus;

Future<bool> checkLocationPermission2() async {
  final status = await Permission.location.status;

  // ❌ Permanently denied → open settings
  if (status.isPermanentlyDenied) {
    await openAppSettings();
    return false;
  }

  // ❌ Denied (but not permanent) → request ONCE
  if (status.isDenied) {
    final result = await Permission.location.request();
    if (!result.isGranted) {
      return false;
    }
  }

  // 2️⃣ Check if GPS is ON
  final location = Location();
  bool serviceEnabled = await location.serviceEnabled();

  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      return false;
    }
  }

  return true;
}
