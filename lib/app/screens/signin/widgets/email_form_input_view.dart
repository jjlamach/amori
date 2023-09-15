import 'package:amori/app/screens/signin/state/sign_in_ui_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailFormInputView extends StatelessWidget {
  final TextEditingController controller;
  const EmailFormInputView({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: (newValue) {},
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
