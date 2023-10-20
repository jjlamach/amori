import 'package:amori/app/screens/emotionselection/state/emotion_form_cubit.dart';
import 'package:amori/common/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      width: double.infinity,
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
          onChanged: (value) {
            context.read<EmotionFormCubit>().fillingDescription(
                  feelingDescription: value,
                );
          },
          validator: (value) {
            if ((value?.isEmpty == true) || value == null) {
              return "Describe what made you feel that way.";
            }
            return null;
          },
          controller: _emotion,
          maxLength: 250, // Counter - bottom right
          maxLines: 250, // Box increases height for 250
        ),
      ),
    );
  }
}
