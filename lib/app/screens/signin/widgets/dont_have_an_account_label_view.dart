import 'package:amori/common/strings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountLabelView extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController password;
  final GlobalKey<FormState> formKey;
  const DontHaveAnAccountLabelView(
      {required this.email,
      required this.password,
      required this.formKey,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: Strings.dontHaveAnAccountYet,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            TextSpan(
              text: ' ${Strings.register}',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                  ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  email.clear();
                  password.clear();
                  formKey.currentState?.reset();
                  AutoRouter.of(context).pushNamed('/register');
                },
            ),
          ],
        ),
      ),
    );
  }
}
