import 'package:flutter/material.dart';

class PasswordFormFieldView extends StatelessWidget {
  const PasswordFormFieldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 337,
      height: 46,
      child: TextFormField(
        decoration: const InputDecoration(
          label: Text(
            "Password",
          ),
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.all(20.0),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
