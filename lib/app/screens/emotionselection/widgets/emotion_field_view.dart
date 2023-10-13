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
                      friends: (tagName, selected) => tagName,
                      others: (tagName, selected) => tagName,
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
          maxLength: 250, // Counter - bottom right
          maxLines: 250, // Box increases height for 250
        ),
      ),
    );
  }
}
