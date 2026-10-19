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

import 'package:sensible_c_r_m/components/update_pop_up_widget.dart';

import 'package:new_version_plus/new_version_plus.dart';

Future checkAppUpdateplayStore(BuildContext context) async {
  try {
    final newVersion = NewVersionPlus(
      androidId: "com.sensiblebiz.crmlite", //   ← CHANGE  THIS
    );

    // Fetch Play Store version info
    final status = await newVersion.getVersionStatus();

    if (status == null) return;

    String currentVersion = status.localVersion;
    String storeVersion = status.storeVersion;
    FFAppState().localVersion = currentVersion;
    FFAppState().storeVersion = storeVersion;
    // Debug print
    print("Current version: $currentVersion");
    print("Store version: $storeVersion");

    // If store version is higher, show popup
    if (status.canUpdate) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const UpdatePopUpWidget(),
      );
    }
  } catch (e) {
    print("Error checking update: $e");
  }
}
