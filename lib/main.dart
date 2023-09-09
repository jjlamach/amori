import 'package:flutter/material.dart';

void main() {
  runApp(const AmoriApp());
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
      ),
    );
  }
}
