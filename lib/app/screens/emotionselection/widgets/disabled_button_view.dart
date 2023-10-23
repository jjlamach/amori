import 'package:amori/common/dimen.dart';
import 'package:amori/common/strings.dart';
import 'package:flutter/material.dart';

class DisabledButtonView extends StatelessWidget {
  const DisabledButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
              splashFactory: NoSplash.splashFactory,
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Dimen.borderRadiusCircular,
                    ),
                  ),
                ),
              ),
              backgroundColor: MaterialStatePropertyAll(
                Colors.grey.shade200,
              ),
              side: MaterialStatePropertyAll(
                BorderSide(
                  color: Colors.grey.shade200,
                  width: 2.0,
                ),
              ),
            ),
        onPressed: () {},
        child: const Text(
          Strings.save,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
