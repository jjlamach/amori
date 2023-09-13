import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/common/strings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(131, 165, 255, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
              onPressed: () => AutoRouter.of(context).push(
                const SignInRoute(),
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
      ),
    );
  }
}
