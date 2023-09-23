import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/dimen.dart';
import 'package:amori/domain/app_user.dart';
import 'package:amori/main.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Tags {
  Personal,
  Work,
  Family,
  Relationship,
}

@RoutePage()
class EmotionSelectionPage extends StatelessWidget {
  final String emotion;
  const EmotionSelectionPage({
    required this.emotion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss keyboard
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: BlocProvider<TagCubit>(
          create: (_) => getIt<TagCubit>(),
          child: CustomScrollView(
            shrinkWrap: false,
            slivers: [
              const SliverAppBar(
                title: Text(
                  'What is making you?:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SvgPicture.asset(
                  emotion,
                  width: 200,
                  height: 200,
                  // fit: BoxFit.fill,
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 40.0)),
              SliverPadding(
                padding: const EdgeInsets.all(25.0),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Write it out',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          const SizedBox(width: 10.0),
                          SvgPicture.asset('lib/assets/icon _pencil_.svg'),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        width: 391,
                        height: 218,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimen.borderRadiusCircular),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  Dimen.borderRadiusCircular),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(233, 233, 233, 1),
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  Dimen.borderRadiusCircular),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            'Label it',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                      ),
                      BlocBuilder<TagCubit, TagState>(
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
                                  cubit.tagPersonal(selected);
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
                                  cubit.tagWork(selected);
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
                                  cubit.tagFamily(selected);
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
                                  cubit.tagRelationships(selected);
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    Dimen.borderRadiusCircular,
                                  ),
                                ),
                                selected: state.whenOrNull(
                                      relationships: (tagName, selected) =>
                                          selected,
                                    ) ??
                                    false,
                                showCheckmark: false,
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Save',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
