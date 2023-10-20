import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TagsView extends StatelessWidget {
  const TagsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagCubit, TagState>(
      builder: (context, state) {
        final cubit = context.read<TagCubit>();
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          children: TagType.values.map((tagType) {
            bool isSelected = false;
            state.maybeMap(
              personal: (state) =>
                  isSelected = tagType == TagType.personal && state.selected,
              work: (state) =>
                  isSelected = tagType == TagType.work && state.selected,
              family: (state) =>
                  isSelected = tagType == TagType.family && state.selected,
              relationships: (state) => isSelected =
                  tagType == TagType.relationships && state.selected,
              friends: (state) =>
                  isSelected = tagType == TagType.friends && state.selected,
              others: (state) =>
                  isSelected = tagType == TagType.others && state.selected,
              orElse: () => isSelected = false,
            );
            return FilterChip(
              label: Text(tagType.name),
              selected: isSelected,
              onSelected: (selected) {
                if (!selected) {
                  cubit.resetTag();
                } else {
                  cubit.setTag(tagType, selected);
                }
              },
            );
          }).toList(),
        );
      },
    );
  }
}
