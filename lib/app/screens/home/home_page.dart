import 'package:amori/common/app_button.dart';
import 'package:amori/common/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(131, 165, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            Strings.appMoto,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 27,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50.0),
          const AppButton(
            activityName: Strings.getStarted,
            buttonColor: Color.fromRGBO(172, 196, 254, 1),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
