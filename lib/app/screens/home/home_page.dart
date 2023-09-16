import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/common.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Good morning, Julio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'How are we feeling today?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loggedOut: () => AutoRouter.of(context).replace(
                      SignInRoute(),
                    ),
                  );
                },
                child: TextButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(AuthEvent.logOut());
                  },
                  child: Text('Log Out'),
                ),
              ),
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    error: (exception) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(Common.showAppSnackBar(exception));
                    },
                    deletedAccount: () {
                      AutoRouter.of(context).replace(
                        OnBoardingRoute(),
                      );
                    },
                  );
                },
                child: TextButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(AuthEvent.delete());
                  },
                  child: Text('Delete'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
