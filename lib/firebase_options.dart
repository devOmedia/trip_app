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
    apiKey: 'AIzaSyCZ4vHANnwKUrD77HL2Yl4f4lg8xrlgRmQ',
    appId: '1:366663200291:web:d7aad285534d190cf7cb96',
    messagingSenderId: '366663200291',
    projectId: 'facedetector-15fba',
    authDomain: 'facedetector-15fba.firebaseapp.com',
    storageBucket: 'facedetector-15fba.appspot.com',
    measurementId: 'G-E1V46WL587',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBb7lqKN4z8EpNpD9f4cOQEKipTML4hctk',
    appId: '1:366663200291:android:75db1d957ca10dbff7cb96',
    messagingSenderId: '366663200291',
    projectId: 'facedetector-15fba',
    storageBucket: 'facedetector-15fba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA2RqhmbmHDrkT_4Y6-ticLBtYVHLwORQA',
    appId: '1:366663200291:ios:2d4e2dec0493f173f7cb96',
    messagingSenderId: '366663200291',
    projectId: 'facedetector-15fba',
    storageBucket: 'facedetector-15fba.appspot.com',
    iosClientId: '366663200291-fe2kagb9apru93858dbnc1ff8ki8vsm8.apps.googleusercontent.com',
    iosBundleId: 'com.example.tripApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA2RqhmbmHDrkT_4Y6-ticLBtYVHLwORQA',
    appId: '1:366663200291:ios:2d4e2dec0493f173f7cb96',
    messagingSenderId: '366663200291',
    projectId: 'facedetector-15fba',
    storageBucket: 'facedetector-15fba.appspot.com',
    iosClientId: '366663200291-fe2kagb9apru93858dbnc1ff8ki8vsm8.apps.googleusercontent.com',
    iosBundleId: 'com.example.tripApp',
  );
}
