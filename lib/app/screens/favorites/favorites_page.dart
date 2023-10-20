import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/strings.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/main.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final uid = getIt<AuthBloc>().getUser() ?? '';
    return BlocProvider(
      create: (context) =>
          getIt.get<FeelingsCubit>()..watchFavoriteFeelings(uid ?? ''),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            Strings.favorites,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Strings.clickOnAdayToRelieve,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 40.0),
              Expanded(
                child: BlocBuilder<FeelingsCubit, List<Feeling>>(
                  builder: (context, state) {
                    return ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20.0),
                      shrinkWrap: true,
                      itemCount: state.length,
                      itemBuilder: (context, index) {
                        final date = state[index].dateTime;

                        /// From UTC to LocalDate
                        DateTime toDate = DateTime.parse(date).toLocal();
                        final formattedDate =
                            DateFormat('MMMM d, y').format(toDate);
                        if (index % 2 == 0) {
                          return GestureDetector(
                            onTap: () => AutoRouter.of(context)
                                .push(SelectedFav(feeling: state[index])),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 252, 201, 1),
                                borderRadius: BorderRadius.circular(
                                  40,
                                ),
                              ),
                              height: 59,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      formattedDate,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                    SvgPicture.asset(
                                      state[index].feeling,
                                      width: 50,
                                      height: 49,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else {
                          return GestureDetector(
                            onTap: () => AutoRouter.of(context)
                                .push(SelectedFav(feeling: state[index])),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(226, 235, 255, 1),
                                borderRadius: BorderRadius.circular(
                                  40,
                                ),
                              ),
                              height: 59,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      formattedDate,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                    SvgPicture.asset(
                                      state[index].feeling,
                                      width: 50,
                                      height: 49,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
