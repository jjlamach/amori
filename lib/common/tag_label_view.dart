import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:flutter/material.dart';

class TagLabelView extends StatelessWidget {
  const TagLabelView({
    super.key,
    required this.feeling,
  });

  final Feeling feeling;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color.fromRGBO(172, 196, 254, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Text(
          feeling.tag,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
