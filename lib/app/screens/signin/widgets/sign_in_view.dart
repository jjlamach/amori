import 'package:amori/app/screens/signin/widgets/dont_have_an_account_header_view.dart';
import 'package:amori/app/screens/signin/widgets/email_form_input_view.dart';
import 'package:amori/app/screens/signin/widgets/forgotten_password_button_view.dart';
import 'package:amori/app/screens/signin/widgets/password_form_field_view.dart';
import 'package:amori/common/assets.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailCtrlr;
  final TextEditingController passwordCtrlr;
  const SignInView(
      {required this.formKey,
      required this.emailCtrlr,
      required this.passwordCtrlr,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
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
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10.0),
              const DontHaveAnAccountHeaderView(),
              const SizedBox(height: 20.0),
              EmailFormInputView(controller: emailCtrlr),
              const SizedBox(height: 20.0),
              PasswordFormFieldView(controller: passwordCtrlr),
              const ForgottenPasswordButtonView(),
              const SizedBox(height: 5.0),
              SizedBox(
                width: 337,
                height: 46,
                child: OutlinedButton(
                  onPressed: () {
                    // final x = Form.of(context).validate();
                    // TODO: implement sign in or register logic
                    // AutoRouter.of(context).replaceNamed('/index');
                    final isValid = formKey.currentState?.validate();
                  },
                  child: const Text('Sign in'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
