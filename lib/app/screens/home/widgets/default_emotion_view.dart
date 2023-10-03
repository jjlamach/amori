import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/common/assets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefaultEmotionView extends StatelessWidget {
  const DefaultEmotionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 20.0,
      children: List.generate(
        Assets.emotions.length,
        (index) => GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(
              EmotionSelectionRoute(
                emotion: Assets.emotions[index],
              ),
            );
          },
          child: SvgPicture.asset(
            Assets.emotions[index],
          ),
        ),
      ),
    );
  }
}
