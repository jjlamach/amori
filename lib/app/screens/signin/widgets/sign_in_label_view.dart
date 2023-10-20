import 'package:amori/common/strings.dart';
import 'package:flutter/material.dart';

class SignInLabelView extends StatelessWidget {
  const SignInLabelView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        Strings.signIn,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
