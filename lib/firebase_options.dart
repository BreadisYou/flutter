// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAV6LYvBj__z-HsM8vCgGAPw1nwk81IOKQ',
    appId: '1:930942382028:web:8e9f4ddd1012e0331c3769',
    messagingSenderId: '930942382028',
    projectId: 'sogra-4d8b4',
    authDomain: 'sogra-4d8b4.firebaseapp.com',
    storageBucket: 'sogra-4d8b4.appspot.com',
    measurementId: 'G-09ZD5YYXB1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEUVH3IXfpd5C43PlXwSb165fzxPAVY38',
    appId: '1:930942382028:android:bd4471fb494ac7831c3769',
    messagingSenderId: '930942382028',
    projectId: 'sogra-4d8b4',
    storageBucket: 'sogra-4d8b4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4bH0EJb0Wa-CbA0q3OWUJXcYqgsrAoa8',
    appId: '1:930942382028:ios:25f2f28bc86a7eba1c3769',
    messagingSenderId: '930942382028',
    projectId: 'sogra-4d8b4',
    storageBucket: 'sogra-4d8b4.appspot.com',
    iosBundleId: 'com.example.sogra',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4bH0EJb0Wa-CbA0q3OWUJXcYqgsrAoa8',
    appId: '1:930942382028:ios:25f2f28bc86a7eba1c3769',
    messagingSenderId: '930942382028',
    projectId: 'sogra-4d8b4',
    storageBucket: 'sogra-4d8b4.appspot.com',
    iosBundleId: 'com.example.sogra',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAV6LYvBj__z-HsM8vCgGAPw1nwk81IOKQ',
    appId: '1:930942382028:web:a53b70dc0122bf4d1c3769',
    messagingSenderId: '930942382028',
    projectId: 'sogra-4d8b4',
    authDomain: 'sogra-4d8b4.firebaseapp.com',
    storageBucket: 'sogra-4d8b4.appspot.com',
    measurementId: 'G-W6EE9GX84G',
  );
}
