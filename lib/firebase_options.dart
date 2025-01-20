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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCnXrfzzBhZok142F-h2yIrPmhXjH0OKVA',
    appId: '1:887953833370:web:8570e86da80e57bed54e23',
    messagingSenderId: '887953833370',
    projectId: 'mentawareug',
    authDomain: 'mentawareug.firebaseapp.com',
    storageBucket: 'mentawareug.firebasestorage.app',
    measurementId: 'G-P2C524KHRG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBj33UbB-Z2xRxRWUkD6yjNLozpgDHxxT0',
    appId: '1:887953833370:android:f7da2d7cf1d8418cd54e23',
    messagingSenderId: '887953833370',
    projectId: 'mentawareug',
    storageBucket: 'mentawareug.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDc35NJ2HuUeXyMlNOveL8qT6dH_utmSr0',
    appId: '1:887953833370:ios:724610852c22b918d54e23',
    messagingSenderId: '887953833370',
    projectId: 'mentawareug',
    storageBucket: 'mentawareug.firebasestorage.app',
    iosBundleId: 'com.example.mentawareUg',
  );
}
