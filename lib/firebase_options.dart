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
    apiKey: 'AIzaSyBqbzsBXeSbnccR00c3yDTXhIr22ay_hxU',
    appId: '1:778844386799:web:5a51557bd89069e445f21a',
    messagingSenderId: '778844386799',
    projectId: 'study-flutter-s01',
    authDomain: 'study-flutter-s01.firebaseapp.com',
    storageBucket: 'study-flutter-s01.appspot.com',
    measurementId: 'G-4CJD0VKSL6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDlvg9RYv3-mCS764lAJtq1cx_EuTstGE',
    appId: '1:778844386799:android:1cf1b8510cad93a645f21a',
    messagingSenderId: '778844386799',
    projectId: 'study-flutter-s01',
    storageBucket: 'study-flutter-s01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqBFqt0IzRCj9645Z8azJmmklFPoBDRZM',
    appId: '1:778844386799:ios:ff965eb24a6e371645f21a',
    messagingSenderId: '778844386799',
    projectId: 'study-flutter-s01',
    storageBucket: 'study-flutter-s01.appspot.com',
    iosBundleId: 'com.example.studyFlutterS01',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqBFqt0IzRCj9645Z8azJmmklFPoBDRZM',
    appId: '1:778844386799:ios:ec381fc9433a5ba045f21a',
    messagingSenderId: '778844386799',
    projectId: 'study-flutter-s01',
    storageBucket: 'study-flutter-s01.appspot.com',
    iosBundleId: 'com.example.studyFlutterS01.RunnerTests',
  );
}