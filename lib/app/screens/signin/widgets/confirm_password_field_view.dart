import 'package:flutter/material.dart';

class ConfirmPasswordFieldView extends StatelessWidget {
  const ConfirmPasswordFieldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Confirm password field is required.";
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
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
