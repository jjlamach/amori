import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/common/assets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SelectNewEmotionView extends StatelessWidget {
  const SelectNewEmotionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: false,
        slivers: [
          const SliverAppBar(
            centerTitle: false,
            title: Text('Select your feeling:'),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverGrid.count(
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
            ),
          )
        ],
      ),
    );
  }
}
