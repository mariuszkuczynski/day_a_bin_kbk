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
    apiKey: 'AIzaSyBofrgPG4kPZfZNMxOkK-4_0JrC4rFybhg',
    appId: '1:142812516375:web:3943e3e6f168df38360c52',
    messagingSenderId: '142812516375',
    projectId: 'day-a-bin-kbk',
    authDomain: 'day-a-bin-kbk.firebaseapp.com',
    storageBucket: 'day-a-bin-kbk.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMutODkVKSJIewCIZ4DC0LyxWNCHdWfgo',
    appId: '1:142812516375:android:4017a077b3401348360c52',
    messagingSenderId: '142812516375',
    projectId: 'day-a-bin-kbk',
    storageBucket: 'day-a-bin-kbk.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXLrE3GZYnkmXDEhxQXcfoDjqNFGYlSdQ',
    appId: '1:142812516375:ios:01fd67b696a7c3a5360c52',
    messagingSenderId: '142812516375',
    projectId: 'day-a-bin-kbk',
    storageBucket: 'day-a-bin-kbk.appspot.com',
    iosClientId: '142812516375-bt1v7cpgos9mhc17rjm77p1png52dq7p.apps.googleusercontent.com',
    iosBundleId: 'com.mariuszkuczynski.dayABinKbk',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXLrE3GZYnkmXDEhxQXcfoDjqNFGYlSdQ',
    appId: '1:142812516375:ios:a75856ba5f45b734360c52',
    messagingSenderId: '142812516375',
    projectId: 'day-a-bin-kbk',
    storageBucket: 'day-a-bin-kbk.appspot.com',
    iosClientId: '142812516375-h3rcbmso4ub93nh2vmgv3jcof431np0a.apps.googleusercontent.com',
    iosBundleId: 'com.mariuszkuczynski.day-a-bin-kbk',
  );
}