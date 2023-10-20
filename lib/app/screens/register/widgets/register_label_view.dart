import 'package:amori/common/strings.dart';
import 'package:flutter/material.dart';

class RegisterLabelView extends StatelessWidget {
  const RegisterLabelView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      Strings.register,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.white,
            fontSize: 20,
          ),
    );
  }
}
