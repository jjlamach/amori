import 'package:amori/app/auto_route.gr.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/app/screens/signin/widgets/dont_have_an_account_label_view.dart';
import 'package:amori/app/screens/signin/widgets/email_field_form_view.dart';
import 'package:amori/app/screens/signin/widgets/forgotten_password_label.dart';
import 'package:amori/app/screens/signin/widgets/password_form_field_view.dart';
import 'package:amori/app/screens/signin/widgets/sign_in_label_view.dart';
import 'package:amori/common/common.dart';
import 'package:amori/common/strings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late TextEditingController _email;
  late TextEditingController _password;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
    _formKey = GlobalKey();
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SignInLabelView(),
                    const SizedBox(height: 10.0),
                    DontHaveAnAccountLabelView(
                      email: _email,
                      password: _password,
                      formKey: _formKey,
                    ),
                    const SizedBox(height: 20.0),
                    EmailFieldFormView(email: _email),
                    const SizedBox(height: 20.0),
                    PasswordFormFieldView(password: _password),
                    const ForgottenPasswordLabel(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          loggedOut: () => AutoRouter.of(context)
                              .replace(const SignInRoute()),
                          registered: (uid) =>
                              AutoRouter.of(context).replaceAll(
                            [
                              const BottomNavigationBarRoute(),
                            ],
                          ),
                          loggedIn: (user) {
                            _email.clear();
                            _password.clear();
                            AutoRouter.of(context)
                                .replace(const BottomNavigationBarRoute());
                          },
                          error: (exception) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              Common.showAppSnackBar(exception),
                            );
                          },
                        );
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: OutlinedButton(
                          style: Theme.of(context).outlinedButtonTheme.style,
                          onPressed: () {
                            final isFormValid =
                                _formKey.currentState?.validate();
                            if (isFormValid == true) {
                              context.read<AuthBloc>().add(
                                    AuthEvent.logIn(
                                      _email.text,
                                      _password.text,
                                    ),
                                  );
                            }
                          },
                          child: const Text(
                            Strings.signIn,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
