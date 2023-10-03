import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/assets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SelectNewEmotionView extends StatelessWidget {
  const SelectNewEmotionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: false,
        slivers: [
          const SliverAppBar(
            centerTitle: false,
            title: Text('Select your feeling:'),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              children: List.generate(
                Assets.emotions.length,
                (index) {
                  return BlocBuilder<EmotionCubit, EmotionState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        emotionSelected: (emotion, description, tag) {
                          if (emotion == Assets.emotions[index]) {
                            return GestureDetector(
                              onTap: () {
                                AutoRouter.of(context).push(
                                  EmotionSelectionRoute(
                                    emotion: emotion,
                                    emotionDescription: description,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  emotion,
                                ),
                              ),
                            );
                          } else {
                            return GestureDetector(
                              onTap: () {
                                AutoRouter.of(context).push(
                                  EmotionSelectionRoute(
                                    emotion: Assets.emotions[index],
                                  ),
                                );
                              },
                              child: SvgPicture.asset(
                                Assets.emotions[index],
                              ),
                            );
                          }
                        },
                        orElse: () => BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              loggedIn: (user) {
                                if (user?.emotionOfToday ==
                                    Assets.emotions[index]) {
                                  return GestureDetector(
                                    onTap: () {
                                      AutoRouter.of(context).push(
                                        EmotionSelectionRoute(
                                          emotion: user?.emotionOfToday ?? '',
                                          emotionDescription: context
                                              .read<AuthBloc>()
                                              .currentUser
                                              ?.emotionDescription,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      child: SvgPicture.asset(
                                        user?.emotionOfToday ?? '',
                                      ),
                                    ),
                                  );
                                } else {
                                  return GestureDetector(
                                    onTap: () {
                                      AutoRouter.of(context).push(
                                        EmotionSelectionRoute(
                                          emotion: Assets.emotions[index],
                                        ),
                                      );
                                    },
                                    child: SvgPicture.asset(
                                      Assets.emotions[index],
                                    ),
                                  );
                                }
                              },
                              orElse: () => const SizedBox.shrink(),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
