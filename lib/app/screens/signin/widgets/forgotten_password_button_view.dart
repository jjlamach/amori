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
        onPressed: () {
          // TODO: implement forgot password logic
        },
        child: const Text("Forgotten Password?"),
      ),
    );
  }
}
