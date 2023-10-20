import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/app/screens/emotionselection/widgets/emotion_field_view.dart';
import 'package:amori/app/screens/emotionselection/widgets/tags_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/common/common.dart';
import 'package:amori/common/strings.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/main.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class EmotionFormPage extends StatefulWidget {
  final String? emotion;
  final String? emotionDescription;
  final bool? isFavoriteFeeling;
  final DateTime? differentDate;
  const EmotionFormPage({
    this.emotion,
    this.emotionDescription,
    this.isFavoriteFeeling,
    this.differentDate,
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
                  Strings.whatIsMakingYou,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        widget.emotion ?? '',
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    widget.isFavoriteFeeling == true
                        ? const Positioned(
                            top: 30,
                            right: 100,
                            child: Icon(
                              Icons.favorite,
                              size: 40,
                              color: Colors.red,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
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
                            Strings.writeItOut,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          const SizedBox(width: 10.0),
                          SvgPicture.asset(Assets.iconPencil),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    EmotionFieldView(emotion: _emotion, formKey: _formKey),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 20.0),
                        child: Text(
                          Strings.labelIt,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                      ),
                    ),
                    const TagsView(),
                    const SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: Theme.of(context).outlinedButtonTheme.style,
                        onPressed: () async {
                          final tag = context.read<TagCubit>().state.whenOrNull(
                                    personal: (tagName, selected) => tagName,
                                    family: (tagName, selected) => tagName,
                                    relationships: (tagName, selected) =>
                                        tagName,
                                    work: (tagName, selected) => tagName,
                                    friends: (tagName, selected) => tagName,
                                    others: (tagName, selected) => tagName,
                                    noTag: () => '',
                                  ) ??
                              '';

                          /// If this is not null it means the user is gonna add a feeling from a different date
                          /// that is not today
                          final uid = context.read<AuthBloc>().uid ?? '';
                          if (widget.differentDate != null) {
                            String differentDateId =
                                '${widget.differentDate?.year}-${widget.differentDate?.month.toString().padLeft(2, '0')}-${widget.differentDate?.day.toString().padLeft(2, '0')}';
                            getIt<FeelingsCubit>().addFeeling(
                              uid,
                              Feeling(
                                feeling: widget.emotion ?? '',
                                feelingDescription: _emotion.text,
                                tag: tag,
                                dateTime: differentDateId,
                              ),
                            );
                          } else {
                            DateTime now = DateTime.now();
                            String dateId =
                                '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

                            getIt<FeelingsCubit>().addFeeling(
                              uid,
                              Feeling(
                                feeling: widget.emotion ?? '',
                                feelingDescription: _emotion.text,
                                tag: tag,
                                dateTime: dateId,
                              ),
                            );
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            Common.showAppSnackBar(Strings.feelingRecorded),
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
                        },
                        child: const Text(
                          Strings.save,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
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
