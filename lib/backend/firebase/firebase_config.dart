import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBD0lD9DEMa6JgTDAqLi1qitMLclypULic",
            authDomain: "goodmoon1-63946.firebaseapp.com",
            projectId: "goodmoon1-63946",
            storageBucket: "goodmoon1-63946.appspot.com",
            messagingSenderId: "581798469216",
            appId: "1:581798469216:web:b77b16624f935484832d05",
            measurementId: "G-13X2XGNK15"));
  } else {
    await Firebase.initializeApp();
  }
}
