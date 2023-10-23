import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/home/state/home_cubit.dart';
import 'package:amori/app/screens/home/widgets/default_emotion_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/dimen.dart';
import 'package:amori/common/strings.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/domain/models/user/amori_user.dart';
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
    final uid = context.read<AuthBloc>().getUser() ?? '';
    context.read<FeelingsCubit>().watchFeelings(uid);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<HomeCubit>()..getUsername(uid),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          appBar: AppBar(
            leading: BlocBuilder<FeelingsCubit, List<Feeling>>(
              builder: (context, state) {
                if (state.isEmpty) {
                  return const SizedBox.shrink();
                } else {
                  final feeling =
                      state.isNotEmpty ? state.first.isFavorite : false;
                  if (feeling) {
                    return IconButton(
                      onPressed: () {
                        context.read<FeelingsCubit>().unfavoriteFeeling(
                              uid,
                              state.first.dateTime,
                            );
                      },
                      icon: const Icon(Icons.favorite,
                          color: Colors.red, size: 40),
                    );
                  } else {
                    return IconButton(
                      onPressed: () {
                        context.read<FeelingsCubit>().favoriteFeeling(
                              uid,
                              state.first.dateTime,
                            );
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
                    Strings.logOut,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
          body: Center(
            child: BlocBuilder<FeelingsCubit, List<Feeling>>(
              builder: (context, feelings) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    BlocBuilder<HomeCubit, AmoriUser>(
                      builder: (context, state) {
                        if (state.uid?.isEmpty == true) {
                          return const SizedBox.shrink();
                        } else {
                          return Text(
                            '${Strings.hello}${state.displayName}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w700,
                                ),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 20.0),
                    feelings.isEmpty
                        ? Column(
                            children: [
                              Text(
                                Strings.howAreWeFeelingToday,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
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
                              Dimen.isBigScreen(context)
                                  ? SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1)
                                  : const SizedBox.shrink(),
                              OutlinedButton(
                                style:
                                    Theme.of(context).outlinedButtonTheme.style,
                                onPressed: () {
                                  AutoRouter.of(context).push(
                                    SelectNewEmotionView(
                                      feeling: feelings.first,
                                    ),
                                  );
                                },
                                child: _checkLatestFeelingForButton(
                                    feelings, context),
                                // child: const Text(
                                //   Strings.edit,
                                //   style: TextStyle(
                                //     fontWeight: FontWeight.bold,
                                //   ),
                                // ),
                              )
                            ],
                          ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Text _checkLatestFeeling(List<Feeling> feelings, BuildContext context) {
    final TextStyle? style = Theme.of(context).textTheme.headlineMedium;
    if (feelings.isEmpty) {
      return Text(
        Strings.howAreWeFeelingToday,
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
        Strings.todayYouAreFeeling,
        style: style,
      );
    } else {
      return Text(
        Strings.lastFeelingRecorded,
        style: style,
      );
    }
  }

  Text _checkLatestFeelingForButton(
      List<Feeling> feelings, BuildContext context) {
    final TextStyle? style = Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        );
    if (feelings.isEmpty) {
      return Text(
        "Add today’s feeling",
        textAlign: TextAlign.center,
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
        Strings.edit,
        style: style,
      );
    } else {
      return Text(
        "Add today's feeling",
        style: style,
      );
    }
  }
}
