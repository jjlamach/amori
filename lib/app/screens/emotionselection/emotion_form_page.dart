import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/app/screens/emotionselection/widgets/disabled_button_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/common/dimen.dart';
import 'package:amori/common/strings.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class EmotionFormPage extends StatefulWidget {
  final String? feelingImg;
  final DateTime? differentDate;

  const EmotionFormPage({
    this.feelingImg,
    this.differentDate,
    super.key,
  });

  @override
  State<EmotionFormPage> createState() => _EmotionFormPageState();
}

class _EmotionFormPageState extends State<EmotionFormPage> {
  late TextEditingController _emotion;
  late GlobalKey<FormState> _formKey;
  late String uid;
  bool isFieldEmpty = false;
  late bool isFavorite;

  @override
  void initState() {
    super.initState();

    _formKey = GlobalKey();

    uid = context.read<AuthBloc>().uid ?? '';

    /// if this is true then you are looking at a recorded feeling
    /// Display recorded data
    if (context.read<FeelingsCubit>().state.firstOrNull?.feeling ==
        widget.feelingImg) {
      _emotion = TextEditingController(
        text:
            context.read<FeelingsCubit>().state.firstOrNull?.feelingDescription,
      );
      context.read<TagCubit>().selectTag(
          context.read<FeelingsCubit>().state.firstOrNull?.tag ?? '');
      isFavorite =
          context.read<FeelingsCubit>().state.firstOrNull?.isFavorite ?? false;
    }

    /// Brand new feeling
    /// No recorded data
    else {
      _emotion = TextEditingController();
      context.read<TagCubit>().resetSelection();
      isFavorite = false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emotion.dispose();
    _formKey.currentState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> tags = [
      "Personal",
      "Work",
      "Family",
      "Relationship",
      "Friends",
      "Others"
    ];
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
                child: Center(
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        widget.feelingImg ?? '',
                        width: double.infinity,
                        height: 200,
                      ),
                      isFavorite == true
                          ? const Positioned(
                              top: 0,
                              right: 0,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
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
                    Container(
                      width: double.infinity,
                      height: 218,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(Dimen.borderRadiusCircular),
                        ),
                      ),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: _emotion,
                          validator: (value) {
                            final tag = context.read<TagCubit>().state;
                            if (tag.isEmpty) {
                              return "Select a tag";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              if (value.isEmpty) {
                                isFieldEmpty = true;
                              }
                            });
                          },
                          keyboardType: TextInputType.text,
                          maxLength: 250, // Counter - bottom right
                          maxLines: 250, // Box increases height for 250
                        ),
                      ),
                    ),
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
                    BlocBuilder<TagCubit, String>(
                      builder: (context, selectedTag) {
                        return Wrap(
                          spacing: 8.0,
                          children: tags.map((tag) {
                            return FilterChip(
                              label: Text(tag),
                              selected: selectedTag == tag,
                              onSelected: (value) =>
                                  context.read<TagCubit>().selectTag(tag),
                            );
                          }).toList(),
                        );
                      },
                    ),
                    const SizedBox(height: 40.0),
                    _emotion.text.isNotEmpty == true
                        ? _buildEnableButton(context)
                        : const DisabledButtonView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildEnableButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: Theme.of(context).outlinedButtonTheme.style,
        onPressed: () {
          final isValid = _formKey.currentState?.validate();
          final tag = context.read<TagCubit>().state;
          if (isValid == true && tag.isNotEmpty) {
            final String differentDate = widget.differentDate?.formatMe() ?? '';
            context
                .read<FeelingsCubit>()
                .addFeeling(
                    uid,
                    Feeling(
                      feeling: widget.feelingImg ?? '',
                      tag: tag,
                      isFavorite: false,
                      dateTime: differentDate.isNotEmpty
                          ? differentDate
                          : DateTime.now().formatMe(),
                      feelingDescription: _emotion.text,
                    ))
                .then(
              (value) {
                context.read<TagCubit>().resetSelection();
                AutoRouter.of(context).replaceAll(
                  [
                    const HomeRoute(),
                  ],
                );
              },
            );
          }
        },
        child: const Text(
          Strings.save,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
