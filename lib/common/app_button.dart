import 'package:amori/common/dimen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final String activityName;
  final Color buttonColor;
  final Color textColor;
  final bool? borderColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Function onTap;
  const AppButton({
    required this.onTap,
    required this.activityName,
    required this.buttonColor,
    required this.textColor,
    this.borderColor,
    this.fontSize,
    this.fontWeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(),
      child: Text(
        activityName,
        style: GoogleFonts.inter(
          fontSize: fontSize ?? 20,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: textColor,
        ),
      ),
    );
  }
}
