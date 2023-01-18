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
    apiKey: 'AIzaSyBom6D5CBbqldp38nVgO50o-z4NMMSMEh0',
    appId: '1:806840477016:web:33f3b1a214a81bf801312d',
    messagingSenderId: '806840477016',
    projectId: 'singleclock-9a1df',
    authDomain: 'singleclock-9a1df.firebaseapp.com',
    storageBucket: 'singleclock-9a1df.appspot.com',
    measurementId: 'G-DPJS114NC2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClzPsKmQJTesAYAc5eBt8APbgSTJMB928',
    appId: '1:806840477016:android:b7524dd86fd2136a01312d',
    messagingSenderId: '806840477016',
    projectId: 'singleclock-9a1df',
    storageBucket: 'singleclock-9a1df.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKf52bDp2voU8OpOF1XV8LaSCXfLxPvzw',
    appId: '1:806840477016:ios:64c940b30e35b77b01312d',
    messagingSenderId: '806840477016',
    projectId: 'singleclock-9a1df',
    storageBucket: 'singleclock-9a1df.appspot.com',
    iosClientId:
        '806840477016-qjkoc2nj30oh98g75fqks4lcfuqdq13i.apps.googleusercontent.com',
    iosBundleId: 'com.example.singleClockProj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKf52bDp2voU8OpOF1XV8LaSCXfLxPvzw',
    appId: '1:806840477016:ios:64c940b30e35b77b01312d',
    messagingSenderId: '806840477016',
    projectId: 'singleclock-9a1df',
    storageBucket: 'singleclock-9a1df.appspot.com',
    iosClientId:
        '806840477016-qjkoc2nj30oh98g75fqks4lcfuqdq13i.apps.googleusercontent.com',
    iosBundleId: 'com.example.singleClockProj',
  );
}
