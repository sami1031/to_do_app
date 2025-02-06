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
    apiKey: 'AIzaSyAdWE7AxPknYR5wsxnghGqwSxU74izAk5Y',
    appId: '1:46525125716:web:5063376964adf7be2749c1',
    messagingSenderId: '46525125716',
    projectId: 'to-do-app-3a393',
    authDomain: 'to-do-app-3a393.firebaseapp.com',
    storageBucket: 'to-do-app-3a393.firebasestorage.app',
    measurementId: 'G-Q41W493VEM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3K-GkDNZTMXtliAOBZqjiQk877zTsqPU',
    appId: '1:46525125716:android:6f39b99d0957c09a2749c1',
    messagingSenderId: '46525125716',
    projectId: 'to-do-app-3a393',
    storageBucket: 'to-do-app-3a393.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCa-il1y5TxFFE10chAc9fX3RUbwkPHPhk',
    appId: '1:46525125716:ios:656f8a2e941b802c2749c1',
    messagingSenderId: '46525125716',
    projectId: 'to-do-app-3a393',
    storageBucket: 'to-do-app-3a393.firebasestorage.app',
    iosBundleId: 'com.example.toDoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCa-il1y5TxFFE10chAc9fX3RUbwkPHPhk',
    appId: '1:46525125716:ios:656f8a2e941b802c2749c1',
    messagingSenderId: '46525125716',
    projectId: 'to-do-app-3a393',
    storageBucket: 'to-do-app-3a393.firebasestorage.app',
    iosBundleId: 'com.example.toDoApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdWE7AxPknYR5wsxnghGqwSxU74izAk5Y',
    appId: '1:46525125716:web:76c65194d969e4872749c1',
    messagingSenderId: '46525125716',
    projectId: 'to-do-app-3a393',
    authDomain: 'to-do-app-3a393.firebaseapp.com',
    storageBucket: 'to-do-app-3a393.firebasestorage.app',
    measurementId: 'G-CR8WVMK1CY',
  );
}
