import 'package:flutter/material.dart';

class EmailFormInputView extends StatelessWidget {
  const EmailFormInputView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Email field required.";
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
