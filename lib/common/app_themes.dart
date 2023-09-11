import 'package:amori/common/dimen.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final inputDecorationTheme = InputDecorationTheme(
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
  );
  static const outLinedButtonTheme = OutlinedButtonThemeData(
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
  );
  static const textButtomTheme = TextButtonThemeData(
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
  );
}

class AppleBttn extends AppleSignInButton {
  AppleBttn({required super.loadingIndicator});
}
