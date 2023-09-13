import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/home/home_page.dart';
import 'package:amori/app/screens/signin/bloc/sign_in_ui_cubit.dart';
import 'package:amori/app/screens/signin/widgets/already_have_an_account_header_view.dart';
import 'package:amori/app/screens/signin/widgets/confirm_password_field_view.dart';
import 'package:amori/app/screens/signin/widgets/dont_have_an_account_header_view.dart';
import 'package:amori/app/screens/signin/widgets/email_form_input_view.dart';
import 'package:amori/app/screens/signin/widgets/forgotten_password_button_view.dart';
import 'package:amori/app/screens/signin/widgets/password_form_field_view.dart';
import 'package:amori/common/assets.dart';
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
        child: Form(
          child: BlocBuilder<SignInUICubit, SignInUIState>(
            builder: (context, state) => ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(25.0),
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: Image.asset(
                    Assets.logo2,
                    width: 189,
                    height: 184,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state is SignInRegisterState ? 'Register' : 'Sign In',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    state is SignInRegisterState
                        ? const AlreadyHaveAnAccountHeaderView()
                        : const DontHaveAnAccountHeaderView(),
                    const SizedBox(height: 20.0),
                    const EmailFormInputView(),
                    const SizedBox(height: 20.0),
                    const PasswordFormFieldView(),
                    state is SignInRegisterState
                        ? const ConfirmPasswordFieldView()
                        : const SizedBox.shrink(),
                    state is SignInInitialState
                        ? const ForgottenPasswordButtonView()
                        : const SizedBox(height: 40.0),
                    const SizedBox(height: 5.0),
                    SizedBox(
                      width: 337,
                      height: 46,
                      child: OutlinedButton(
                        onPressed: () {
                          // final x = Form.of(context).validate();
                          // TODO: implement sign in or register logic
                          AutoRouter.of(context).replaceNamed('/home');
                        },
                        child: Text(
                          state is SignInInitialState ? 'Sign in' : 'Register',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
