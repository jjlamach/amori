import 'package:amori/app/screens/splashscreen/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(131, 165, 255, 1),
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        useMaterial3: true,
        colorScheme: kColorScheme,
      ),
      home: const SplashScreen(),
    );
  }
}
