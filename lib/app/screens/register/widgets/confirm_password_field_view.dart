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
      obscureText: true,
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
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            width: 2.0,
            color: Color.fromRGBO(172, 196, 254, 1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            width: 2.0,
            color: Color.fromRGBO(172, 196, 254, 1),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: "Confirm Password",
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
