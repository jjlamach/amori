import 'package:amori/app/screens/signin/state/sign_in_ui_cubit.dart';
import 'package:amori/app/screens/signin/widgets/register_view.dart';
import 'package:amori/app/screens/signin/widgets/sign_in_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: BlocBuilder<SignInUICubit, SignInUIState>(
          builder: (context, state) {
            return state.when(
              signIn: (emailCtrlr, passwordCtrlr, formKey) => SignInView(
                formKey: formKey,
                emailCtrlr: emailCtrlr,
                passwordCtrlr: passwordCtrlr,
              ),
              register: (emailCtrlr, passwordCtrlr, formKey) => RegisterView(
                formKey: formKey,
                emailCtrlr: emailCtrlr,
                passwordCtrlr: passwordCtrlr,
              ),
            );
          },
        ),
      ),
    );
  }
}
