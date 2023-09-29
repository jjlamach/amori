import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/edit_emotion_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SelectedEmotionPage extends StatelessWidget {
  const SelectedEmotionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
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
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.logOut());
                      // context.read<HomeCubit>().resetState();
                    },
                    child: const Text(
                      'Log out',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: BlocBuilder<EditEmotionCubit, EditEmotionState>(
                builder: (context, state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) => Text(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                        'Hello, ${state.maybeWhen(
                          loggedIn: (user) => user?.displayName,
                          orElse: () => const SizedBox.shrink(),
                        )}',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Today's feeling",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SvgPicture.asset(
                      "${state.whenOrNull(emotionSelected: (emotion) => emotion)}",
                      width: double.infinity,
                      height: 200,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    SizedBox(
                      width: 157,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {
                          AutoRouter.of(context)
                              .pushNamed('/select-new-emotion');
                        },
                        child: Text(
                          'Edit',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
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
    );
  }
}
