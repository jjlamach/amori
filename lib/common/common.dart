import 'package:flutter/material.dart';

class Common {
  static SnackBar showAppSnackBar(String message) {
    return SnackBar(
      showCloseIcon: true,
      duration: const Duration(seconds: 4),
      backgroundColor: const Color.fromRGBO(172, 196, 254, 1),
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(0, 0, 0, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
