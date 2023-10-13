import 'package:amori/app/screens/feelings/state/delete_feeling_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarFeelingView extends StatelessWidget {
  final Feeling feeling;
  const CalendarFeelingView({
    required this.feeling,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: feeling.feeling.contains("angry")
                  ? const Color.fromRGBO(255, 226, 226, 1)
                  : const Color.fromRGBO(226, 235, 255, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'On this day you were feeling:',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(
                          131,
                          165,
                          255,
                          1,
                        ),
                      ),
                ),
                const SizedBox(height: 10.0),
                SvgPicture.asset(
                  feeling.feeling,
                  height: 116,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          'Here’s what happened',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: const Color.fromRGBO(
                  131,
                  165,
                  255,
                  1,
                ),
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            height: 218,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 1,
                color: const Color.fromRGBO(233, 233, 233, 1),
              ),
            ),
            child: Text(
              feeling.feelingDescription,
              style: Theme.of(context).textTheme.bodyMedium,
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color.fromRGBO(172, 196, 254, 1),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  child: Text(feeling.tag),
                ),
              ),
              const SizedBox(width: 20.0),
              feeling.isFavorite
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color.fromRGBO(172, 196, 254, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 10),
                        child: Text(
                            'A ${String.fromCharCode(0x2764) + String.fromCharCode(0xFE0F)}one'),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        Center(
          child: BlocListener<DeletionCubit, DeletionState>(
            listener: (context, state) {
              if (state == DeletionState.deleted) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Feeling deleted'),
                ));
              }
            },
            child: IconButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Delete Feeling'),
                  content: const Text(
                      'Are you sure you want to delete this feeling?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        AutoRouter.of(context).pop(); // Close the dialog
                        final uid =
                            context.read<AuthBloc>().currentUser?.uid ?? '';
                        context
                            .read<DeletionCubit>()
                            .deleteFeeling(uid, feeling.dateTime);
                      },
                      child: const Text(
                        'Yes',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          AutoRouter.of(context).pop(), // Close the dialog
                      child: const Text('No'),
                    ),
                  ],
                ),
              ),
              icon: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(255, 226, 226, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'lib/assets/trash_icon.png',
                    width: 31,
                    height: 34,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
