import 'package:flutter/material.dart';

class ConfirmPasswordFieldView extends StatelessWidget {
  const ConfirmPasswordFieldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        width: 337,
        height: 46,
        child: TextFormField(
          decoration: const InputDecoration(
            label: Text(
              "Confirm Password",
            ),
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: EdgeInsets.all(20.0),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }
}
