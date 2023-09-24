import 'package:flutter/material.dart';

class UsernameFieldView extends StatelessWidget {
  const UsernameFieldView({
    super.key,
    required TextEditingController username,
  }) : _username = username;

  final TextEditingController _username;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _username,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Username field required.";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Username",
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
