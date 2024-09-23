import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDD8or8ghwcBskxnJwBC-RxrWeBpJe7upM",
            authDomain: "look-book-y3ih9l.firebaseapp.com",
            projectId: "look-book-y3ih9l",
            storageBucket: "look-book-y3ih9l.appspot.com",
            messagingSenderId: "662164708776",
            appId: "1:662164708776:web:c9762b6f5d19826e59919d"));
  } else {
    await Firebase.initializeApp();
  }
}
