import 'package:amori/common/dimen.dart';
import 'package:flutter/material.dart';

class EmotionFieldView extends StatelessWidget {
  const EmotionFieldView({
    super.key,
    required TextEditingController emotion,
    required this.formKey,
  }) : _emotion = emotion;

  final TextEditingController _emotion;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 391,
      height: 218,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(Dimen.borderRadiusCircular),
        ),
      ),
      child: Form(
        key: formKey,
        child: TextFormField(
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Describe how you felt today.";
            }
            return null;
          },
          controller: _emotion,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
              borderSide: const BorderSide(
                color: Color.fromRGBO(233, 233, 233, 1),
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
              borderSide: const BorderSide(
                color: Color.fromRGBO(172, 196, 254, 1),
                width: 2.0,
              ),
            ),
          ),
          maxLength: 250, // Counter - bottom right
          maxLines: 250, // Box increases height for 250
        ),
      ),
    );
  }
}
