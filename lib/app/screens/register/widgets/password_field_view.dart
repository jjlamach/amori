import 'package:flutter/material.dart';

class PasswordFieldView extends StatelessWidget {
  const PasswordFieldView({
    super.key,
    required TextEditingController password,
  }) : _password = password;

  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _password,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Password field required.";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
