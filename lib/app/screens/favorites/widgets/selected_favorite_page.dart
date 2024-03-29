import 'package:amori/common/favorite_label_view.dart';
import 'package:amori/common/strings.dart';
import 'package:amori/common/tag_label_view.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

@RoutePage(name: 'SelectedFav')
class SelectedFavoritePage extends StatelessWidget {
  final Feeling feeling;
  const SelectedFavoritePage({required this.feeling, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () => AutoRouter.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
            expandedHeight: 400,
            backgroundColor: const Color.fromRGBO(226, 235, 255, 1),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30.0),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    Builder(
                      builder: (context) {
                        DateTime parsedDate = DateTime.parse(feeling.dateTime);
                        String formattedDate =
                            DateFormat('MMMM d, y').format(parsedDate);
                        return Text(
                          formattedDate,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                        );
                      },
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      Strings.onThisDayYouWereFeeling2,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: const Color.fromRGBO(131, 165, 255, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(height: 20.0),
                    SvgPicture.asset(feeling.feeling, height: 138),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 10.0),
                Text(
                  Strings.whatHappened,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: const Color.fromRGBO(131, 165, 255, 1),
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
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagLabelView(feeling: feeling),
                      const SizedBox(width: 20.0),
                      feeling.isFavorite
                          ? const FavoriteLabelView()
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
