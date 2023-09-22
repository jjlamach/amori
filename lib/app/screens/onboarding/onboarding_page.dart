import 'package:amori/common/strings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(131, 165, 255, 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            if (height > 600) const SizedBox(height: 10.0),
            if (height > 900)
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1, // 10%
              ),
            Text(
              Strings.appMoto,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 27,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4, // 40%
              child: SvgPicture.asset(
                'lib/assets/husky.svg',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ), // 20%
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
              onPressed: () => AutoRouter.of(context).replaceNamed('/sign-in'),
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
