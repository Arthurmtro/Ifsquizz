import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:ifsquizz/firebase_options.dart';

import 'package:ifsquizz/routes.dart';
import 'package:ifsquizz/services/firestore.dart';
import 'package:ifsquizz/services/models.dart';
import 'package:ifsquizz/theme.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(snapshot);
          }
          return const Center(
            child: Text('error in initialisation',
                textDirection: TextDirection.ltr),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return DynamicColorBuilder(
              builder: (lightColorScheme, darkColorScheme) {
            return StreamProvider(
              create: (_) => FirestoreService().streamReport(),
              initialData: Report(),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                darkTheme: appTheme(darkColorScheme),
                themeMode: ThemeMode.dark,
                routes: appRoutes,
              ),
            );
          });
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const Text('loading', textDirection: TextDirection.ltr);
      },
    );
  }
}
