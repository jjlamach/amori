import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/home/state/home_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/assets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: false,
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
                    context.read<HomeCubit>().resetState();
                  },
                  child: const Text(
                    'Log out',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
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
                        loggedIn: (username) => Text(
                          'Hello, ${username?.displayName}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'How are we feeling today?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              children: List.generate(
                Assets.emotions.length,
                (index) => GestureDetector(
                  onTap: () => AutoRouter.of(context).push(
                    EmotionSelectionRoute(emotion: Assets.emotions[index]),
                  ),
                  child: SvgPicture.asset(
                    Assets.emotions[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
