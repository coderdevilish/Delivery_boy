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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDydIyZ67EH_BPVoGvuFOELSsz77a7-uj0',
    appId: '1:910516599381:web:1e849d6f34aad5d13c72dc',
    messagingSenderId: '910516599381',
    projectId: 'udemy-ac28e',
    authDomain: 'udemy-ac28e.firebaseapp.com',
    storageBucket: 'udemy-ac28e.appspot.com',
    measurementId: 'G-Z2CQWBK39Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApgqV5CrzP5uXzS70Y2GKo_NEWiWM6Ktc',
    appId: '1:910516599381:android:278d8631f015a91d3c72dc',
    messagingSenderId: '910516599381',
    projectId: 'udemy-ac28e',
    storageBucket: 'udemy-ac28e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_dbguB0bWDNuw3N8kF3ORkgidDDG2d6I',
    appId: '1:910516599381:ios:694c79d40fcc65fd3c72dc',
    messagingSenderId: '910516599381',
    projectId: 'udemy-ac28e',
    storageBucket: 'udemy-ac28e.appspot.com',
    iosClientId: '910516599381-uoq32vidnn53jqbmiosd76ptai1i1jma.apps.googleusercontent.com',
    iosBundleId: 'com.example.apifcm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_dbguB0bWDNuw3N8kF3ORkgidDDG2d6I',
    appId: '1:910516599381:ios:694c79d40fcc65fd3c72dc',
    messagingSenderId: '910516599381',
    projectId: 'udemy-ac28e',
    storageBucket: 'udemy-ac28e.appspot.com',
    iosClientId: '910516599381-uoq32vidnn53jqbmiosd76ptai1i1jma.apps.googleusercontent.com',
    iosBundleId: 'com.example.apifcm',
  );
}