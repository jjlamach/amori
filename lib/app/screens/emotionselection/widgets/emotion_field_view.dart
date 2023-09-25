import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
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
      width: 350,
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
            final String? selectedTag =
                context.read<TagCubit>().state.whenOrNull(
                      personal: (tagName, selected) => tagName,
                      family: (tagName, selected) => tagName,
                      relationships: (tagName, selected) => tagName,
                      work: (tagName, selected) => tagName,
                    );
            if (value == null || value.isEmpty) {
              return "Describe how you felt today.";
            }
            if (selectedTag == null) {
              return "Select a tag for your feeling.";
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
