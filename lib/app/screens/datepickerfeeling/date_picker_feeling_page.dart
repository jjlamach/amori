import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/common/strings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// This should be the new "Select new feeling" page from calendar date picker
@RoutePage()
class DatePickerFeelingPage extends StatelessWidget {
  final DateTime date;
  const DatePickerFeelingPage({required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: false,
        slivers: [
          const SliverAppBar(
            centerTitle: false,
            title: Text(Strings.selectYourFeeling),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              children: List.generate(
                Assets.emotions.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(
                        DatePickerEmotionFormRoute(
                          feelingImg: Assets.emotions[index],
                          date: date,
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      Assets.emotions[index],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
