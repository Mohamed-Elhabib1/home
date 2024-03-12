import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDcbq7P75B-C6VOMV3AgA5NbZXH690mG1w",
            authDomain: "lymo-delevry.firebaseapp.com",
            projectId: "lymo-delevry",
            storageBucket: "lymo-delevry.appspot.com",
            messagingSenderId: "517763299422",
            appId: "1:517763299422:web:1c6303e4d2d2ad7412dccf",
            measurementId: "G-C6E1KGZL8Q"));
  } else {
    await Firebase.initializeApp();
  }
}
