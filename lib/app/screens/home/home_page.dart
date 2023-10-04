import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/home/widgets/default_emotion_view.dart';
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: AppBar(
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
                      onPressed: () => context
                          .read<AuthBloc>()
                          .add(const AuthEvent.logOut()),
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
            ),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loggedIn: (user) {
                    if (user.feelings?.isEmpty == true) {
                      return Column(
                        children: [
                          Text(
                            'Hello, ${user.displayName}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'How are we feeling?',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 40.0),
                          const DefaultEmotionView(),
                        ],
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
