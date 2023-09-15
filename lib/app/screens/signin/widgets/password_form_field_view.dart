import 'package:flutter/material.dart';

class PasswordFormFieldView extends StatelessWidget {
  final TextEditingController controller;
  const PasswordFormFieldView({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
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
      keyboardType: TextInputType.emailAddress,
    );
  }
}
