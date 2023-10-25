import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/common/strings.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SelectNewEmotionView extends StatelessWidget {
  final Feeling? feeling;

  const SelectNewEmotionView({
    this.feeling,
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
                        EmotionFormRoute(
                          feelingImg: Assets.emotions[index],
                        ),
                      );
                    },
                    child: feeling?.feeling == Assets.emotions[index] &&
                            feeling?.dateTime == DateTime.now().formatMe()
                        ? Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
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
