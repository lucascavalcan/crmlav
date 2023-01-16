import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCnUt9xzODbCV-LgciSMUF3KgGvm2aT7Js",
            authDomain: "onboard-72490.firebaseapp.com",
            projectId: "onboard-72490",
            storageBucket: "onboard-72490.appspot.com",
            messagingSenderId: "165821714909",
            appId: "1:165821714909:web:6438bb8f871b15fbcfe634"));
  } else {
    await Firebase.initializeApp();
  }
}
