import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCZ-qNuzdfc2BtorkZQ-IUoh6OWJnuZ_vM",
            authDomain: "sensiblecrm.firebaseapp.com",
            projectId: "sensiblecrm",
            storageBucket: "sensiblecrm.firebasestorage.app",
            messagingSenderId: "700529442570",
            appId: "1:700529442570:web:286030337f189f5cefc4f3",
            measurementId: "G-BPB72J5Y2T"));
  } else {
    await Firebase.initializeApp();
  }
}
