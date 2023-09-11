import 'package:amori/app/screens/splashscreen/splash_screen.dart';
import 'package:amori/common/dimen.dart';
import 'package:amori/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(131, 165, 255, 1),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => {
      runApp(const AmoriApp()),
    },
  );
}

class AmoriApp extends StatelessWidget {
  const AmoriApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amori App',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
            borderSide: const BorderSide(
              color: Color.fromRGBO(172, 196, 254, 1),
              width: 2,
            ),
          ),
          contentPadding: const EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
          ),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: 10),
            ),
            side: MaterialStatePropertyAll(
              BorderSide(
                color: Color.fromRGBO(172, 196, 254, 1),
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(172, 196, 254, 1),
            ),
            foregroundColor: MaterialStatePropertyAll(
              Colors.white,
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 16,
          ),
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            foregroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(131, 165, 255, 1),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
