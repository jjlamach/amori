import 'package:amori/common/strings.dart';
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
          return Strings.usernameRequired;
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
        labelText: Strings.username,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
