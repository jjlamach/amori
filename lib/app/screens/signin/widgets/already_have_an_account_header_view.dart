import 'package:amori/app/screens/signin/state/sign_in_ui_cubit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlreadyHaveAnAccountHeaderView extends StatelessWidget {
  const AlreadyHaveAnAccountHeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: "Already have an account?",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          TextSpan(
            text: ' Sign In',
            style: const TextStyle(
              color: Color.fromRGBO(131, 165, 255, 1),
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.read<SignInUICubit>().signIn(),
          ),
        ],
      ),
    );
  }
}
