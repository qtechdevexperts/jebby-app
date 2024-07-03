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
    apiKey: 'AIzaSyA4-ew0JgSrMb35xfGpcVEXf85Hz51fyDY',
    appId: '1:4159239435:web:3671df402a28fdaa835e0e',
    messagingSenderId: '4159239435',
    projectId: 'fir-flutter-auth-c988d',
    authDomain: 'fir-flutter-auth-c988d.firebaseapp.com',
    storageBucket: 'fir-flutter-auth-c988d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLO1JSYjnBkdG1xKb4d_lhejY8xhLiTko',
    appId: '1:369111140699:android:bb727908c68f7da1e1b27e',
    messagingSenderId: '369111140699',
    projectId: 'jebby-525d6',
    storageBucket: 'jebby-525d6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-P-aYF99Ecit_e6lzUlxow4qs01aWCXw',
    appId: '1:369111140699:ios:e17f2f566c21c6c3e1b27e',
    messagingSenderId: '369111140699',
    projectId: 'jebby-525d6',
    storageBucket: 'jebby-525d6.appspot.com',
    iosClientId: '369111140699-jda16p6mepbjftlcs9ibcb7tfh7q0b4p.apps.googleusercontent.com',
    iosBundleId: 'com.jebbylistings.jebby',
  );
}