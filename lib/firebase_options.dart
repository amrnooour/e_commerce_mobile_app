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
    apiKey: 'AIzaSyD44q_irAOdP3yfQBRkbrifjD9tLih4pz8',
    appId: '1:833311454555:web:a8ee5dd9e9da4bb7f1d67e',
    messagingSenderId: '833311454555',
    projectId: 'e-commerce-cd113',
    authDomain: 'e-commerce-cd113.firebaseapp.com',
    storageBucket: 'e-commerce-cd113.appspot.com',
    measurementId: 'G-H80W0DEXXP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWxylx5vqRniW00ZRkP9Zt1eQN85AMaGw',
    appId: '1:833311454555:android:4c091d19690219c9f1d67e',
    messagingSenderId: '833311454555',
    projectId: 'e-commerce-cd113',
    storageBucket: 'e-commerce-cd113.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuLWr_SfNUyZgVzlS87NaShcXz_EkSQJU',
    appId: '1:833311454555:ios:97c95e2954035861f1d67e',
    messagingSenderId: '833311454555',
    projectId: 'e-commerce-cd113',
    storageBucket: 'e-commerce-cd113.appspot.com',
    iosBundleId: 'com.example.eCommerceMobileApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuLWr_SfNUyZgVzlS87NaShcXz_EkSQJU',
    appId: '1:833311454555:ios:97c95e2954035861f1d67e',
    messagingSenderId: '833311454555',
    projectId: 'e-commerce-cd113',
    storageBucket: 'e-commerce-cd113.appspot.com',
    iosBundleId: 'com.example.eCommerceMobileApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD44q_irAOdP3yfQBRkbrifjD9tLih4pz8',
    appId: '1:833311454555:web:202834b3045407dbf1d67e',
    messagingSenderId: '833311454555',
    projectId: 'e-commerce-cd113',
    authDomain: 'e-commerce-cd113.firebaseapp.com',
    storageBucket: 'e-commerce-cd113.appspot.com',
    measurementId: 'G-BKG5S5XC2T',
  );
}
