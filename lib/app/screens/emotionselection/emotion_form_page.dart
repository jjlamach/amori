import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/app/screens/emotionselection/widgets/emotion_field_view.dart';
import 'package:amori/app/screens/emotionselection/widgets/tags_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/common.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class EmotionFormPage extends StatefulWidget {
  final String emotion;
  final String? emotionDescription;
  const EmotionFormPage({
    required this.emotion,
    this.emotionDescription,
    super.key,
  });

  @override
  State<EmotionFormPage> createState() => _EmotionFormPageState();
}

class _EmotionFormPageState extends State<EmotionFormPage> {
  late TextEditingController _emotion;
  late GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();
    _emotion = TextEditingController(
      text: widget.emotionDescription,
    );
    _formKey = GlobalKey();
  }

  @override
  void dispose() {
    super.dispose();
    _emotion.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomScrollView(
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
                  widget.emotion,
                  width: double.infinity,
                  height: 200,
                  // fit: BoxFit.fill,
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 40.0)),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
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
                    ),
                    const SizedBox(height: 20.0),
                    EmotionFieldView(
                      emotion: _emotion,
                      formKey: _formKey,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 20.0),
                        child: Text(
                          'Label it',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                    ),
                    const TagsView(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 337,
                      child: OutlinedButton(
                        onPressed: () async {
                          final isValid = _formKey.currentState?.validate();
                          final tagSelected = context
                              .read<TagCubit>()
                              .state
                              .whenOrNull(
                                family: (tagName, selected) => tagName,
                                friends: (tagName, selected) => tagName,
                                personal: (tagName, selected) => tagName,
                                relationships: (tagName, selected) => tagName,
                                work: (tagName, selected) => tagName,
                                noTag: () => "",
                                others: (tagName, selected) => tagName,
                              );
                          if ((isValid == true) &&
                              _emotion.text.isNotEmpty &&
                              tagSelected != null) {
                            final uid =
                                context.read<AuthBloc>().currentUser?.uid ?? '';
                            context.read<EmotionCubit>().emotionSelected(
                                  uid,
                                  widget.emotion,
                                  _emotion.text,
                                  tagSelected,
                                  DateTime.now().toUtc(),
                                );
                            ScaffoldMessenger.of(context).showSnackBar(
                              Common.showAppSnackBar(
                                  "Feeling recorded successfully."),
                            );
                            Future.delayed(const Duration(seconds: 1)).then(
                              (value) {
                                _emotion.clear();
                                context.read<TagCubit>().resetTag();
                                AutoRouter.of(context).replaceAll(
                                  [
                                    const HomeRoute(),
                                  ],
                                );
                              },
                            );
                          }
                        },
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
            ],
          ),
        ),
      ),
    );
  }
}