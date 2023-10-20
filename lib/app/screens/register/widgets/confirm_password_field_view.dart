import 'package:amori/common/strings.dart';
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
          return Strings.confirmPasswordField;
        }
        if (value.isNotEmpty && value != _password.text) {
          return Strings.passwordMustMatch;
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
        labelText: Strings.confirmPassword,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
