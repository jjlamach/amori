import 'package:amori/common/app_button.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/common/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;

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
          TextButton(
            style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 10,
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(172, 196, 254, 1),
                  ),
                ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SignInScreen(
                  headerMaxExtent: MediaQuery.of(context).size.height * 0.3,
                  headerBuilder: (context, constraints, shrinkOffset) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(Assets.logo2),
                      ),
                    );
                  },
                  providers: [
                    EmailAuthProvider(),
                    AppleProvider(),
                  ],
                ),
              ),
            ),
            child: Text(
              Strings.getStarted,
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
