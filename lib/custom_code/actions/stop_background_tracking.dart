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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> stopBackgroundTracking() async {
  final service = FlutterBackgroundService();

  bool isRunning = await service.isRunning();

  if (!isRunning) {
    print('ℹ️ Background service is not running');
    return;
  }

  // 🔴 Tell background isolate to stop itself
  service.invoke('stopService');

  print('🛑 Background tracking stopped');

  Fluttertoast.showToast(
    msg: "🛑 Background tracking stopped",
    toastLength: Toast.LENGTH_SHORT,
  );
}
