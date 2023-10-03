import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/home/widgets/default_emotion_view.dart';
import 'package:amori/app/screens/home/widgets/emotion_selected_view.dart';
import 'package:amori/app/screens/home/widgets/recorded_emotion_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: false,
          slivers: [
            SliverAppBar(
              actions: [
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.whenOrNull(loggedOut: () {
                      /// reset emotion selection, etc
                      context.read<EmotionCubit>().resetState();
                      AutoRouter.of(context).replace(
                        const SignInRoute(),
                      );
                    });
                  },
                  child: TextButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.logOut());
                    },
                    child: const Text(
                      'Log out',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loggedIn: (user) {
                            if (user?.emotionOfToday?.isNotEmpty == true) {
                              return Column(
                                children: [
                                  Text(
                                    'Hello, ${user?.displayName}',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  const Text(
                                    "Today’s feeling",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Column(
                                children: [
                                  Text(
                                    'Hello, ${user?.displayName}',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 10.0),
                                  const Text(
                                    "How are we feeling today?",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              );
                            }
                          },
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: BlocBuilder<EmotionCubit, EmotionState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    /// Here emotion has been selected so we display it
                    emotionSelected: (emotion, description, tag) =>
                        EmotionSelectedView(emotion: emotion),

                    /// When the user logs in, check the emotion saved
                    /// if it does not have any display emotions
                    orElse: () => BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loggedIn: (user) {
                            if (user?.emotionOfToday?.isNotEmpty == true) {
                              if (user != null) {
                                return RecordedEmotion(appUser: user);
                              } else {
                                return const SizedBox.shrink();
                              }
                            }

                            /// User logs in for the first time
                            else {
                              return const DefaultEmotionView();
                            }
                          },
                          orElse: () => const SliverToBoxAdapter(),
                        );
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
