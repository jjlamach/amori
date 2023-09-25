import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/common/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Tags {
  Personal,
  Work,
  Family,
  Relationship,
}

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
          spacing: 5.0,
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Dimen.borderRadiusCircular,
                ),
                side: BorderSide.none,
              ),
              selected: state.whenOrNull(
                    personal: (tagName, selected) => selected,
                  ) ??
                  false,
              showCheckmark: false,
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Dimen.borderRadiusCircular,
                ),
              ),
              selected: state.whenOrNull(
                    work: (tagName, selected) => selected,
                  ) ??
                  false,
              showCheckmark: false,
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Dimen.borderRadiusCircular,
                ),
                side: const BorderSide(
                  color: Color.fromRGBO(172, 196, 254, 1),
                  width: 2,
                ),
              ),
              showCheckmark: false,
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Dimen.borderRadiusCircular,
                ),
              ),
              selected: state.whenOrNull(
                    relationships: (tagName, selected) => selected,
                  ) ??
                  false,
              showCheckmark: false,
            ),
          ],
        );
      },
    );
  }
}
