import 'package:amori/app/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        /*
          If user kills the app check the session again and if a user exists don't make him sign-in again
         */
        FirebaseAuth.instance.authStateChanges().listen(
          (User? user) {
            if (mounted) {
              if (user != null) {
                AutoRouter.of(context).replaceNamed('/index');
              } else {
                AutoRouter.of(context).replaceNamed('/onboarding');
              }
            }
          },
        );

        // AutoRouter.of(context).replaceNamed('/onboarding');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xff83a5ff),
                  Color(0xffffffff),
                ],
                stops: [0, 1],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
