import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/common/strings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ForgottenPasswordLabel extends StatelessWidget {
  const ForgottenPasswordLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () => {
          AutoRouter.of(context).push(
            const ForgottenPasswordRoute(),
          ),
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            Strings.forgottenPassword,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
