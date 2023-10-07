import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/home/widgets/default_emotion_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<EmotionCubit>().fetchCurrentFeelings();
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                loggedOut: () => AutoRouter.of(context).replace(
                  const SignInRoute(),
                ),
              );
            },
            child: TextButton(
              style: Theme.of(context).textButtonTheme.style,
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.logOut());
              },
              child: Text(
                'Log out',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loggedIn: (user, feelings) {
                        return BlocBuilder<EmotionCubit, EmotionState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              emotionSelected:
                                  (emotion, emotionDescription, tag) => Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  Text(
                                    'Hello, ${user.displayName}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Text(
                                    "Today's feeling: ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                  SvgPicture.asset(
                                    emotion,
                                    width: double.infinity,
                                    height: 200,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      AutoRouter.of(context).push(
                                        const SelectNewEmotionView(),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0,
                                        vertical: 2.0,
                                      ),
                                      child: Text(
                                        'Edit',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              emptyFeelingsList: () => Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  Text(
                                    'Hello, ${user.displayName}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Text(
                                    'How are we feeling today?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                  ),
                                  const DefaultEmotionView(),
                                ],
                              ),
                              loadedFeelings: (feelings) => Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  Text(
                                    'Hello, ${user.displayName}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0,
                                        ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Text(
                                    'Last feeling recorded:',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                          fontSize: 24.0,
                                        ),
                                  ),
                                  SvgPicture.asset(
                                    feelings.last.feeling,
                                    width: double.infinity,
                                    height: 207,
                                  ),
                                  const SizedBox(height: 40.0),
                                  OutlinedButton(
                                    onPressed: () {
                                      AutoRouter.of(context)
                                          .push(const SelectNewEmotionView());
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0,
                                        vertical: 2.0,
                                      ),
                                      child: Text(
                                        'Edit',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              orElse: () => const SizedBox.shrink(),
                            );
                          },
                        );
                      },
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
