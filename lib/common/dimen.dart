import 'package:flutter/material.dart';
import 'dart:math' as math;

class Dimen {
  static const double borderRadiusCircular = 20.0;

  static bool isBigScreen(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    double diagonal = math.sqrt((width * width) + (height * height));
    // Large screen
    if (diagonal > 1000) {
      return true;
      // Small screen
    } else {
      return false;
    }
  }
}
