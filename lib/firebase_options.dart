// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyApWraHR8AtyI1tCUeovMlJwjIKB2uWwAI',
    appId: '1:104299146469:web:68f3778569fed9a07cf80c',
    messagingSenderId: '104299146469',
    projectId: 'dahab-2f51a',
    authDomain: 'dahab-2f51a.firebaseapp.com',
    storageBucket: 'dahab-2f51a.appspot.com',
    measurementId: 'G-WE97B82S12',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPRkij0KPbcNpFV7sVarHcayF5dF1Uniw',
    appId: '1:104299146469:android:2adba7a64a1335ef7cf80c',
    messagingSenderId: '104299146469',
    projectId: 'dahab-2f51a',
    storageBucket: 'dahab-2f51a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_rtP29D0NthRdi6-gamG7oF4TfxvDjD0',
    appId: '1:104299146469:ios:d0297d8c6331b6997cf80c',
    messagingSenderId: '104299146469',
    projectId: 'dahab-2f51a',
    storageBucket: 'dahab-2f51a.appspot.com',
    iosClientId: '104299146469-5ku3gjkode1mdp51n42g5namav5nrd60.apps.googleusercontent.com',
    iosBundleId: 'com.example.dahab',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_rtP29D0NthRdi6-gamG7oF4TfxvDjD0',
    appId: '1:104299146469:ios:fa8aa41e86d9ab7d7cf80c',
    messagingSenderId: '104299146469',
    projectId: 'dahab-2f51a',
    storageBucket: 'dahab-2f51a.appspot.com',
    iosClientId: '104299146469-upfdtj6eee74nbou7noip9lo84peeucu.apps.googleusercontent.com',
    iosBundleId: 'com.example.dahab.RunnerTests',
  );
}