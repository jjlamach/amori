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
    return Scaffold(
      backgroundColor: const Color.fromRGBO(131, 165, 255, 1),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xffffffff),
              Color(0xff83a5ff),
            ],
            stops: [0, 1],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Text(
                    Strings.appMoto,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: SvgPicture.asset('lib/assets/husky.svg'),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                      backgroundColor: const Color.fromRGBO(172, 196, 254,
                          1), // Approximated color from the image
                      side: const BorderSide(
                        color: Color.fromRGBO(172, 196, 254, 1),
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () =>
                        AutoRouter.of(context).replaceNamed('/sign-in'),
                    child: Text(
                      Strings.getStarted,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
