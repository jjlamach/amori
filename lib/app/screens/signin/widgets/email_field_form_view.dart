import 'package:amori/common/assets.dart';
import 'package:amori/common/strings.dart';
import 'package:flutter/material.dart';

class EmailFieldFormView extends StatelessWidget {
  final TextEditingController _email;

  const EmailFieldFormView({
    super.key,
    required TextEditingController email,
  }) : _email = email;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _email,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return Strings.emailFieldRequired;
        } else if (value.isNotEmpty) {
          final isValid = value.isValidEmail();
          if (!isValid) {
            return Strings.notAvalidEmail;
          }
        }
        return null;
      },
      decoration: InputDecoration(
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        border: Theme.of(context).inputDecorationTheme.border,
        labelText: Strings.email,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
