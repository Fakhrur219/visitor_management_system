import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDvMif-KOEhKfg1jv820tM_BGKJmQrr8gk",
            authDomain: "visitor-management-sys-ver-1.firebaseapp.com",
            projectId: "visitor-management-sys-ver-1",
            storageBucket: "visitor-management-sys-ver-1.appspot.com",
            messagingSenderId: "915457677289",
            appId: "1:915457677289:web:66d0118ef603beef455d78",
            measurementId: "G-VGVHCQCM3T"));
  } else {
    await Firebase.initializeApp();
  }
}
