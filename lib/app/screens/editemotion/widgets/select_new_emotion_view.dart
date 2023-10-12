import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SelectNewEmotionView extends StatelessWidget {
  final Feeling? feeling;
  final DateTime? differentDate;
  const SelectNewEmotionView({
    this.feeling,
    this.differentDate,
    super.key,
  });

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
                (index) {
                  return GestureDetector(
                    onTap: () {
                      if (Assets.emotions[index] == feeling?.feeling) {
                        AutoRouter.of(context).push(
                          EmotionFormRoute(
                            emotion: Assets.emotions[index],
                            emotionDescription: feeling?.feelingDescription,
                            isFavoriteFeeling: feeling?.isFavorite,
                          ),
                        );
                      } else {
                        AutoRouter.of(context).push(
                          EmotionFormRoute(
                            emotion: Assets.emotions[index],

                            /// Different day other than today
                            differentDate: differentDate,
                          ),
                        );
                      }
                    },
                    child: feeling?.feeling == Assets.emotions[index]
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
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
