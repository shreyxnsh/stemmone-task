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
/// 
/// 
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
    apiKey: 'AIzaSyC4SUSdFgW06E-T4pptzqTfXeFatzWKyt4',
    appId: '1:618764222762:web:97d5702a12bd13e9ba1e53',
    messagingSenderId: '618764222762',
    projectId: 'weather-stemm',
    authDomain: 'weather-stemm.firebaseapp.com',
    storageBucket: 'weather-stemm.appspot.com',
    measurementId: 'G-9S8Q4LCJH7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwQ0sFCQx8ufe8ouC1rV8Cwxqap9VKUC4',
    appId: '1:618764222762:android:9e44472605496913ba1e53',
    messagingSenderId: '618764222762',
    projectId: 'weather-stemm',
    storageBucket: 'weather-stemm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIdSh7rhHQELB38nzxkj6x5unCpMcIhhE',
    appId: '1:618764222762:ios:88192d625b765c44ba1e53',
    messagingSenderId: '618764222762',
    projectId: 'weather-stemm',
    storageBucket: 'weather-stemm.appspot.com',
    iosBundleId: 'com.example.weatherappStarterProject',
  );
}
