import 'package:flutter/material.dart';

class ConfirmPasswordFieldView extends StatelessWidget {
  const ConfirmPasswordFieldView({
    super.key,
    required TextEditingController confirmPassword,
    required TextEditingController password,
  })  : _confirmPassword = confirmPassword,
        _password = password;

  final TextEditingController _confirmPassword;
  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _confirmPassword,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Confirm Password field required.";
        }
        if (value.isNotEmpty && value != _password.text) {
          return "Password must match.";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
