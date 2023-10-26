import 'package:amori/app/screens/favorites/state/favorite_cubit.dart';
import 'package:amori/app/screens/feelings/state/delete_feeling_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/common/favorite_label_view.dart';
import 'package:amori/common/strings.dart';
import 'package:amori/common/tag_label_view.dart';
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
                  Strings.onThisDay,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.secondary,
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
          Strings.whatHappened,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                feeling.feelingDescription,
                style: Theme.of(context).textTheme.bodyMedium,
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TagLabelView(feeling: feeling),
              feeling.isFavorite
                  ? const SizedBox(width: 20.0)
                  : const SizedBox.shrink(),
              feeling.isFavorite
                  ? const FavoriteLabelView()
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (dialogContext) => AlertDialog(
                    title: const Text(Strings.deleteFeeling),
                    content: const Text(
                      Strings.areYouSureYouWantToDelete,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () async {
                          AutoRouter.of(dialogContext)
                              .pop(); // Close the dialog
                          final uid = context.read<AuthBloc>().getUser() ?? '';
                          context
                              .read<DeletionCubit>()
                              .deleteFeeling(uid, feeling.dateTime);
                        },
                        child: const Text(
                          Strings.yes,
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      TextButton(
                        onPressed: () => AutoRouter.of(dialogContext)
                            .pop(), // Close the dialog
                        child: const Text(Strings.no),
                      ),
                    ],
                  ),
                ),
                child: const Icon(
                  Icons.delete_forever_rounded,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 20),
              BlocBuilder<FavoriteCubit, bool>(
                builder: (context, state) {
                  final uid = context.read<AuthBloc>().uid ?? '';
                  if (feeling.isFavorite) {
                    return IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (dialogContext) => AlertDialog(
                            title:
                                const Text('Removing feeling from favorites'),
                            content: const Text(
                                'Are you sure you want to remove this Feeling from your Favorite list?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  context
                                      .read<FavoriteCubit>()
                                      .unfavoriteFeeling(uid, feeling.dateTime);
                                  AutoRouter.of(dialogContext).pop();
                                },
                                child: const Text(
                                  'Yes',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    AutoRouter.of(dialogContext).pop(),
                                child: const Text('No'),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: const Icon(Icons.favorite,
                          color: Colors.red, size: 40),
                    );
                  } else {
                    return IconButton(
                      onPressed: () {
                        context
                            .read<FavoriteCubit>()
                            .favoriteFeeling(uid, feeling.dateTime);
                      },
                      icon: const Icon(Icons.favorite_border, size: 40),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
