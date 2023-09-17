import 'package:amori/common/dimen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class EmotionSelectionPage extends StatelessWidget {
  final String emotion;
  const EmotionSelectionPage({
    required this.emotion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tags = [
      Text('Personal'),
      Text('Work'),
      Text('Family'),
      Text('Relationships'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'What is making you?:',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(25.0),
          shrinkWrap: false,
          children: [
            SvgPicture.asset(
              emotion,
              width: 85,
              height: 89,
            ),
            const SizedBox(height: 40.0),
            Row(
              children: [
                const Text(
                  'Write it out',
                  style: TextStyle(
                    color: Color.fromRGBO(131, 165, 255, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10.0),
                SvgPicture.asset('lib/assets/icon _pencil_.svg'),
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              width: 391,
              height: 218,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimen.borderRadiusCircular),
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Dimen.borderRadiusCircular),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(233, 233, 233, 1),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Dimen.borderRadiusCircular),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(172, 196, 254, 1),
                      width: 2.0,
                    ),
                  ),
                ),
                maxLength: 250,
                maxLines: 250,
              ),
            ),
            const Text(
              'Label it',
              style: TextStyle(
                color: Color.fromRGBO(131, 165, 255, 1),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
