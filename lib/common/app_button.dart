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
  const AppButton({
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
    return Container(
      width: 337,
      height: 46,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(Dimen.borderRadiusCircular),
        ),
        border: borderColor == true
            ? Border.all(
                color: const Color.fromRGBO(172, 196, 254, 1),
              )
            : Border.all(
                color: Colors.transparent,
              ),
      ),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          activityName,
          style: GoogleFonts.inter(
            fontSize: fontSize ?? 20,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
