import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/common/assets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SelectNewEmotionView extends StatelessWidget {
  final String? emotion;
  final String? emotionDescription;
  const SelectNewEmotionView(
      {this.emotion, this.emotionDescription, super.key});

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
              children: List.generate(Assets.emotions.length, (index) {
                return GestureDetector(
                  onTap: () {
                    if (Assets.emotions[index] == emotion) {
                      AutoRouter.of(context).push(
                        EmotionSelectionRoute(
                          emotion: Assets.emotions[index],
                          emotionDescription: emotionDescription,
                        ),
                      );
                    } else {
                      AutoRouter.of(context).push(
                        EmotionSelectionRoute(
                          emotion: Assets.emotions[index],
                        ),
                      );
                    }
                  },
                  child: emotion == Assets.emotions[index]
                      ? Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                          ),
                          child: SvgPicture.asset(
                            Assets.emotions[index],
                          ),
                        )
                      : SvgPicture.asset(
                          Assets.emotions[index],
                        ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
