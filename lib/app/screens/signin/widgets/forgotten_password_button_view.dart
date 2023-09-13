import 'package:amori/app/screens/forgottenpassword/forgotten_password_page.dart';
import 'package:flutter/material.dart';

class ForgottenPasswordButtonView extends StatelessWidget {
  const ForgottenPasswordButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ForgottenPasswordPage(),
          ),
        ),
        child: const Text("Forgotten Password?"),
      ),
    );
  }
}
