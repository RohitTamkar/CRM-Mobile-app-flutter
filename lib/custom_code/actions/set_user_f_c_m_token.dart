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

Future setUserFCMToken(
  String? fcmToken,
  DocumentReference userRef,
) async {
  // Add your function code here!
  if (fcmToken == null || fcmToken.isEmpty) {
    return;
  }

  final querySnapshot = await userRef
      .collection('fcm_tokens')
      .where('fcm_token', isEqualTo: fcmToken)
      .limit(1)
      .get();

  // ❌ If it does NOT exist → do nothing
  if (querySnapshot.docs.isEmpty) {
    return;
  }

  final doc = querySnapshot.docs.first;

  // ✅ Update existing document with packageName
  await doc.reference.update({
    'packageName': 'com.sensiblebiz.crmlite', // hardcoded value
  });

  // ✅ Sync FFAppState
  FFAppState().curUserFCMToken = FcmTokenStruct(
    fcmToken: fcmToken,
    fcmDocumentId: doc.id,
  );

  // 🖨 Print the struct
  print('curUserFCMToken.fcmToken: ${FFAppState().curUserFCMToken.fcmToken}');
  print(
      'curUserFCMToken.fcmDocumentId: ${FFAppState().curUserFCMToken.fcmDocumentId}');
}
