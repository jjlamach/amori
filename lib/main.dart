import 'package:amori/app/screens/splashscreen/splash_screen.dart';
import 'package:amori/common/app_themes.dart';
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
        inputDecorationTheme: AppThemes.inputDecorationTheme,
        outlinedButtonTheme: AppThemes.outLinedButtonTheme,
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 16,
          ),
        ),
        textButtonTheme: AppThemes.textButtomTheme,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
