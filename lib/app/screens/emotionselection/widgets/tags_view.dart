import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Tags {
  Personal,
  Work,
  Family,
  Relationship,
  Friends,
  Other,
}

// TODO: Refactor
class TagsView extends StatelessWidget {
  const TagsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagCubit, TagState>(
      builder: (context, state) {
        final state = context.read<TagCubit>().state;
        final cubit = context.read<TagCubit>();
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          children: [
            FilterChip(
              label: Text(Tags.values[0].name),
              onSelected: (selected) {
                if (selected == false) {
                  cubit.resetTag();
                } else {
                  cubit.tagPersonal(selected);
                }
              },
              selected: state.whenOrNull(
                    personal: (tagName, selected) => selected,
                  ) ??
                  false,
            ),
            FilterChip(
              label: Text(Tags.values[1].name),
              onSelected: (selected) {
                if (selected == false) {
                  cubit.resetTag();
                } else {
                  cubit.tagWork(selected);
                }
              },
              selected: state.whenOrNull(
                    work: (tagName, selected) => selected,
                  ) ??
                  false,
            ),
            FilterChip(
              selected: state.whenOrNull(
                    family: (tagName, selected) => selected,
                  ) ??
                  false,
              label: Text(Tags.values[2].name),
              onSelected: (selected) {
                if (selected == false) {
                  cubit.resetTag();
                } else {
                  cubit.tagFamily(selected);
                }
              },
            ),
            FilterChip(
              label: Text(Tags.values[3].name),
              onSelected: (selected) {
                if (selected == false) {
                  cubit.resetTag();
                } else {
                  cubit.tagRelationships(selected);
                }
              },
              selected: state.whenOrNull(
                    relationships: (tagName, selected) => selected,
                  ) ??
                  false,
            ),
            FilterChip(
              label: Text(Tags.values[4].name),
              onSelected: (selected) {
                if (selected == false) {
                  cubit.resetTag();
                } else {
                  cubit.tagFriends(selected);
                }
              },
              selected: state.whenOrNull(
                    friends: (tagName, selected) => selected,
                  ) ??
                  false,
            ),
            FilterChip(
              label: Text(Tags.values[5].name),
              onSelected: (selected) {
                if (selected == false) {
                  cubit.resetTag();
                } else {
                  cubit.tagOthers(selected);
                }
              },
              selected: state.whenOrNull(
                    others: (tagName, selected) => selected,
                  ) ??
                  false,
            ),
          ],
        );
      },
    );
  }
}
