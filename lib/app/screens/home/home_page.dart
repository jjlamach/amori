import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
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
                  },
                  child: const Text('Log out'),
                ),
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [
                Text(
                  'Good morning, Julio', // todo: add username
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'How are we feeling today?',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverGrid(
              // cuz of fixed number of children
              delegate: SliverChildListDelegate(
                [
                  SvgPicture.asset('lib/assets/happy.svg'),
                  SvgPicture.asset('lib/assets/sad.svg'),
                  SvgPicture.asset('lib/assets/relaxed.svg'),
                  SvgPicture.asset('lib/assets/anxious.svg'),
                  SvgPicture.asset('lib/assets/angry.svg'),
                ],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
