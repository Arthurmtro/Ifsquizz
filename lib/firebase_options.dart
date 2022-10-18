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
      //   return web;
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
    apiKey: 'AIzaSyD4ZpuapObMxZ1k1_huvsoOaLX4yzcgOHU',
    appId: '1:543788284764:web:5a8213c649c6717c3a1f99',
    messagingSenderId: '543788284764',
    projectId: 'fflutter-quizz',
    authDomain: 'fflutter-quizz.firebaseapp.com',
    storageBucket: 'fflutter-quizz.appspot.com',
    measurementId: 'G-6LQDYK47D1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrFl-X1Xo8CTTlB1VxB_VLMEfx1KSpDAw',
    appId: '1:543788284764:android:08bc892a48591c043a1f99',
    messagingSenderId: '543788284764',
    projectId: 'fflutter-quizz',
    storageBucket: 'fflutter-quizz.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkrKKWnJpW7fiWHb7EFKG1frbAO5zg5OU',
    appId: '1:543788284764:ios:c75155f77c7879ed3a1f99',
    messagingSenderId: '543788284764',
    projectId: 'fflutter-quizz',
    storageBucket: 'fflutter-quizz.appspot.com',
    androidClientId:
        '543788284764-seqk0hstchuj2b94ddmkhhffbmnpqqmu.apps.googleusercontent.com',
    iosClientId:
        '543788284764-tq1g6ub0ejl9g9l6b5r0pqjpl41mv3bk.apps.googleusercontent.com',
    iosBundleId: 'fr.mtro.ifsquizz',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkrKKWnJpW7fiWHb7EFKG1frbAO5zg5OU',
    appId: '1:543788284764:ios:c75155f77c7879ed3a1f99',
    messagingSenderId: '543788284764',
    projectId: 'fflutter-quizz',
    storageBucket: 'fflutter-quizz.appspot.com',
    androidClientId:
        '543788284764-seqk0hstchuj2b94ddmkhhffbmnpqqmu.apps.googleusercontent.com',
    iosClientId:
        '543788284764-tq1g6ub0ejl9g9l6b5r0pqjpl41mv3bk.apps.googleusercontent.com',
    iosBundleId: 'fr.mtro.ifsquizz',
  );
}
