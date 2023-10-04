import 'package:amori/domain/models/user/amori_user.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecordedEmotion extends StatelessWidget {
  final AmoriUser appUser;
  const RecordedEmotion({
    required this.appUser,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            // "${appUser.emotionOfToday}",
            'Something here',
            width: double.infinity,
            height: 200,
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: 157,
            height: 40,
            child: OutlinedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('/select-new-emotion');
              },
              child: Text(
                'Edit',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
