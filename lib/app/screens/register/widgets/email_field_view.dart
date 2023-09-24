import 'package:amori/common/assets.dart';
import 'package:flutter/material.dart';

class EmailFieldView extends StatelessWidget {
  const EmailFieldView({
    super.key,
    required TextEditingController email,
  }) : _email = email;

  final TextEditingController _email;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _email,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Email field required.";
        } else if (value.isNotEmpty) {
          final isValid = value.isValidEmail();
          if (!isValid) {
            return "Not a valid email.";
          }
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
