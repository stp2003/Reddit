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
    apiKey: 'AIzaSyDvuxBg0rhbdnnKmh3PDCZeAUuBXTK3oBE',
    appId: '1:1078709290792:web:0077180fb9af2a2673b21d',
    messagingSenderId: '1078709290792',
    projectId: 'reddit-9309e',
    authDomain: 'reddit-9309e.firebaseapp.com',
    storageBucket: 'reddit-9309e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJEeMHP6V9JreHXA6bIVxnH-_fAzBltG8',
    appId: '1:1078709290792:android:e47e1b40f502efa273b21d',
    messagingSenderId: '1078709290792',
    projectId: 'reddit-9309e',
    storageBucket: 'reddit-9309e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBphvyTusxoQAyb7KYJ0PsWytQL0TND2xs',
    appId: '1:1078709290792:ios:747588cac27f789373b21d',
    messagingSenderId: '1078709290792',
    projectId: 'reddit-9309e',
    storageBucket: 'reddit-9309e.appspot.com',
    iosBundleId: 'com.example.reddit',
  );
}