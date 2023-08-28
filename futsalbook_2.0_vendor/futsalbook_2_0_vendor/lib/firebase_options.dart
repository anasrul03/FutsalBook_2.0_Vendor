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
    apiKey: 'AIzaSyBdvEpVjLStBwqNtoEpjjGpCaCIuqZmmtQ',
    appId: '1:1037828040689:web:00515ad9681bd01756c650',
    messagingSenderId: '1037828040689',
    projectId: 'futsal-book-2-0',
    authDomain: 'futsal-book-2-0.firebaseapp.com',
    databaseURL: 'https://futsal-book-2-0-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'futsal-book-2-0.appspot.com',
    measurementId: 'G-HMB8HET6KP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMjXcpDdhLcxjep_j_WamCM6zaD1URXgc',
    appId: '1:1037828040689:android:7546484c8a52665356c650',
    messagingSenderId: '1037828040689',
    projectId: 'futsal-book-2-0',
    databaseURL: 'https://futsal-book-2-0-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'futsal-book-2-0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxERpeHl57KQa2-OTs_MS43WbB5mwZ_1w',
    appId: '1:1037828040689:ios:2209a1717c5e342c56c650',
    messagingSenderId: '1037828040689',
    projectId: 'futsal-book-2-0',
    databaseURL: 'https://futsal-book-2-0-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'futsal-book-2-0.appspot.com',
    iosClientId: '1037828040689-ndolk2v276116u88aqqvnpcnv42984bb.apps.googleusercontent.com',
    iosBundleId: 'com.example.futsalbook20Vendor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxERpeHl57KQa2-OTs_MS43WbB5mwZ_1w',
    appId: '1:1037828040689:ios:fb8faac55d92b4ec56c650',
    messagingSenderId: '1037828040689',
    projectId: 'futsal-book-2-0',
    databaseURL: 'https://futsal-book-2-0-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'futsal-book-2-0.appspot.com',
    iosClientId: '1037828040689-mir0ifsp1m65grt5ur17in1du7pnockl.apps.googleusercontent.com',
    iosBundleId: 'com.example.futsalbook20Vendor.RunnerTests',
  );
}
