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

import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveUserDataWithOutlet(
  UserDetailsStruct userData,
  String outletId,
) async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString('user_id', userData.id);
  await prefs.setString('user_name', userData.name);
  await prefs.setString('user_mobile', userData.mobile);
  await prefs.setString('outlet_id', outletId);

  print('✅ User + Outlet data saved');
}
