import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDKdeKVhpYdQyjsw5BN2Zv7e_hQn23Gzp0",
            authDomain: "torta-example.firebaseapp.com",
            projectId: "torta-example",
            storageBucket: "torta-example.appspot.com",
            messagingSenderId: "32897485333",
            appId: "1:32897485333:web:175dcdaff5d9efca455c1c"));
  } else {
    await Firebase.initializeApp();
  }
}
