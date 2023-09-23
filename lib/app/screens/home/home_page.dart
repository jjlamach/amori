import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/domain/app_user.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthBloc>().user;
    final appUser = AppUser(email: user?.email ?? '', username: 'PTeemo');
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    _firestore
        .collection('appUsers')
        .doc('${appUser.username}')
        .set(appUser.toJson());

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
                  child: const Text(
                    'Log out',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Good morning',
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
