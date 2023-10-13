import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/home/widgets/default_emotion_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/main.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthBloc>().currentUser;
    return BlocProvider<EmotionCubit>(
      create: (context) => getIt<EmotionCubit>()
        ..watchFeelings(
          user?.uid ?? '',
        ),
      child: Scaffold(
        appBar: AppBar(
          leading: BlocBuilder<EmotionCubit, List<Feeling>>(
            builder: (context, state) {
              if (state.isEmpty) {
                return const SizedBox.shrink();
              } else {
                final feeling =
                    state.isNotEmpty ? state.first.isFavorite : false;
                if (feeling) {
                  return IconButton(
                    onPressed: () {
                      context.read<EmotionCubit>().unfavoriteFeeling(
                            user?.uid ?? '',
                            state.first.dateTime,
                          );
                    },
                    icon:
                        const Icon(Icons.favorite, color: Colors.red, size: 40),
                  );
                } else {
                  return IconButton(
                    onPressed: () {
                      context.read<EmotionCubit>().favoriteFeeling(
                          user?.uid ?? '', state.first.dateTime);
                    },
                    icon: const Icon(Icons.favorite_border, size: 40),
                  );
                }
              }
            },
          ),
          actions: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.whenOrNull(
                  loggedOut: () =>
                      AutoRouter.of(context).replace(const SignInRoute()),
                );
              },
              child: TextButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.logOut());
                },
                child: Text(
                  'Log Out',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: BlocBuilder<EmotionCubit, List<Feeling>>(
            builder: (context, feelings) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Text(
                    'Hello, ${user?.displayName}',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 20.0),
                  feelings.isEmpty
                      ? Column(
                          children: [
                            Text(
                              'How are we feeling today?',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 20.0),
                            const DefaultEmotionView(),
                          ],
                        )
                      : Column(
                          children: [
                            _checkLatestFeeling(feelings, context),
                            SvgPicture.asset(
                              feelings.first.feeling,
                              height: 207,
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.1),
                            OutlinedButton(
                              onPressed: () {
                                AutoRouter.of(context).push(
                                  SelectNewEmotionView(feeling: feelings.first),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 1.0,
                                ),
                                child: Text(
                                  'Edit',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            )
                          ],
                        ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Text _checkLatestFeeling(List<Feeling> feelings, BuildContext context) {
    final TextStyle? style = Theme.of(context).textTheme.headlineMedium;
    if (feelings.isEmpty) {
      return Text(
        "How are we feeling today?",
        style: style,
      );
    }

    DateTime latestFeelingDate =
        DateTime.parse(feelings.first.dateTime).toLocal();
    DateTime todayDate = DateTime.now();

    // Format to a comparable string format
    String formattedLatestFeelingDate =
        DateFormat('MMMM d, y').format(latestFeelingDate);
    String formattedTodayDate = DateFormat('MMMM d, y').format(todayDate);

    if (formattedLatestFeelingDate == formattedTodayDate) {
      return Text(
        "Today you are feeling",
        style: style,
      );
    } else {
      return Text(
        'Last feeling recorded',
        style: style,
      );
    }
  }
}
