import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/feelings/state/feelings_cubit.dart';
import 'package:amori/app/screens/feelings/widgets/calendar_feeling_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FeelingsPage extends StatelessWidget {
  const FeelingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FeelingsCubit>();
    final uid = context.read<AuthBloc>().currentUser?.uid ?? '';

    /// This will fetch the feeling data for the initial date once the widget is built.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final DateTime initialDate = DateTime.now();
      final String formattedDate =
          '${initialDate.year}-${initialDate.month.toString().padLeft(2, '0')}-${initialDate.day.toString().padLeft(2, '0')}';
      cubit.watchFeeling(uid, formattedDate);
    });
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            centerTitle: false,
            title: Text(
              'Feelings',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<FeelingsCubit, Feeling>(
              builder: (context, state) {
                DateTime now = DateTime.now();
                DateTime firstDate = DateTime(now.year, 1, 1);
                DateTime lastDate = DateTime(now.year, 12, 31);
                return Column(
                  children: [
                    CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: firstDate,
                      lastDate: lastDate,
                      onDateChanged: (value) => {
                        cubit.watchFeeling(
                          uid,
                          '${value.year}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}',
                        ),
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
                                    color:
                                        const Color.fromRGBO(226, 235, 255, 1),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'No entry',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(
                                              131,
                                              165,
                                              255,
                                              1,
                                            ),
                                          ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                OutlinedButton(
                                  onPressed: () {
                                    AutoRouter.of(context)
                                        .push(SelectNewEmotionView());
                                  },
                                  child: Text(
                                    'Add one',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
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
    );
  }
}
