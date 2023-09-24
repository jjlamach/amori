import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountLabelView extends StatelessWidget {
  const AlreadyHaveAnAccountLabelView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: "Already have an account?",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          TextSpan(
            text: ' Sign in',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AutoRouter.of(context).pop();
              },
          ),
        ],
      ),
    );
  }
}
