import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/feelings/state/delete_feeling_cubit.dart';
import 'package:amori/app/screens/feelings/state/feeling_cubit.dart';
import 'package:amori/app/screens/feelings/widgets/calendar_feeling_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/strings.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/main.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FeelingsPage extends StatelessWidget {
  const FeelingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final uid = context.read<AuthBloc>().getUser() ?? '';
    var differentDate;

    final DateTime initialDate = DateTime.now();
    final String formattedDate =
        '${initialDate.year}-${initialDate.month.toString().padLeft(2, '0')}-${initialDate.day.toString().padLeft(2, '0')}';

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt.get<FeelingCubit>()..watchFeeling(uid ?? '', formattedDate),
        ),
        BlocProvider(
          create: (context) => getIt.get<DeletionCubit>(),
        )
      ],
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              centerTitle: false,
              title: Text(
                Strings.feelings,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BlocBuilder<FeelingCubit, Feeling>(
                builder: (context, state) {
                  DateTime now = DateTime.now();
                  DateTime firstDate = DateTime(now.year, 1, 1);
                  return Column(
                    children: [
                      CalendarDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: firstDate,
                        lastDate: now,
                        onDateChanged: (value) {
                          final date =
                              '${value.year}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';
                          context.read<FeelingCubit>().watchFeeling(uid, date);
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      state.feeling.isEmpty
                          ? Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          226, 235, 255, 1),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        Strings.nothingToSeeHere,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  OutlinedButton(
                                    style: Theme.of(context)
                                        .outlinedButtonTheme
                                        .style,
                                    onPressed: () {
                                      AutoRouter.of(context).push(
                                        SelectNewEmotionView(
                                          differentDate: differentDate,
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      Strings.addOne,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : CalendarFeelingView(feeling: state),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
