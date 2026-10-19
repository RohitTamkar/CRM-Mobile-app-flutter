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

import 'package:url_launcher/url_launcher.dart';

import 'package:external_app_launcher/external_app_launcher.dart';

Future launchCallogApp() async {
  String pkg = "com.sensible.callLogs";
  String apkUrl =
      "https://firebasestorage.googleapis.com/v0/b/uvpixcel.appspot.com/o/Website-Images-Live%2FDOWNLOAD_CENTER%2FSensibleCallLogsV1.0.2.apk?alt=media&token=ce2b138a-c457-4b9b-ac27-62e856f89bf2";

  bool isInstalled = await LaunchApp.isAppInstalled(
    androidPackageName: pkg,
  );

  if (isInstalled) {
    await LaunchApp.openApp(
      androidPackageName: "com.sensible.callLogs",
    );
  } /* else {
    await launchUrl(
      Uri.parse(apkUrl),
      mode: LaunchMode.externalApplication,
    );
  }*/
}
