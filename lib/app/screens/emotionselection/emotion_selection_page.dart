import 'package:amori/app/screens/emotionselection/widgets/emotion_field_view.dart';
import 'package:amori/app/screens/emotionselection/widgets/tags_view.dart';
import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class EmotionSelectionPage extends StatefulWidget {
  final String emotion;
  const EmotionSelectionPage({required this.emotion, super.key});

  @override
  State<EmotionSelectionPage> createState() => _EmotionSelectionPageState();
}

class _EmotionSelectionPageState extends State<EmotionSelectionPage> {
  late TextEditingController _emotion;
  late GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();
    _emotion = TextEditingController();
    _formKey = GlobalKey();
  }

  @override
  void dispose() {
    super.dispose();
    _emotion.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text(
                'What is making you?:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SvgPicture.asset(
                widget.emotion,
                width: double.infinity,
                height: 150,
                // fit: BoxFit.fill,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 40.0)),
            SliverPadding(
              padding: const EdgeInsets.all(25.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Write it out',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        const SizedBox(width: 10.0),
                        SvgPicture.asset('lib/assets/icon _pencil_.svg'),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    EmotionFieldView(
                      emotion: _emotion,
                      formKey: _formKey,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          'Label it',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                    ),
                    const TagsView(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          final isValid = _formKey.currentState?.validate();
                          if ((isValid == true) && _emotion.text.isNotEmpty) {
                            FirebaseStorageHelper.saveFeelingDescription(
                              userId:
                                  FirebaseAuth.instance.currentUser?.uid ?? '',
                              feelingDescription: _emotion.text,
                            );
                          }
                        },
                        child: Text(
                          'Save',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 20,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
