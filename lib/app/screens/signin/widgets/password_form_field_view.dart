import 'package:flutter/material.dart';

class PasswordFormFieldView extends StatelessWidget {
  const PasswordFormFieldView({
    super.key,
    required TextEditingController password,
  }) : _password = password;

  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: _password,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Password field required.";
        }
        return null;
      },
      decoration: InputDecoration(
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        border: Theme.of(context).inputDecorationTheme.border,
        labelText: "Password",
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
