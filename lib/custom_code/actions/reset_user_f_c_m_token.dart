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

Future resetUserFCMToken(DocumentReference userRef) async {
  // Add your function code here!
  try {
    final messaging = FirebaseMessaging.instance;

    final fcmToken = await messaging.getToken();

    // Only proceed if fcmToken and its document ID exist
    if (fcmToken != null) {
      // Delete the token document in Firestore
      final querySnapshot = await userRef
          .collection('fcm_tokens')
          .where("fcm_token", isEqualTo: fcmToken)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        await querySnapshot.docs.first.reference.delete();
        print(
            'Deleted Firestore token document: ${querySnapshot.docs.first.id}');
      }

      await messaging.deleteToken();
      print('Deleted FCM token from device');

      print('Reset FCM Token');
    } else {
      print("fcmToken is Null");
    }
  } catch (e) {
    print('Error in resetUserFCMToken: $e');
  }
}
