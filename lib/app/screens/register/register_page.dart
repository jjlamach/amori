import 'package:amori/app/screens/register/widgets/already_have_an_account_label_view.dart';
import 'package:amori/app/screens/register/widgets/confirm_password_field_view.dart';
import 'package:amori/app/screens/register/widgets/email_field_view.dart';
import 'package:amori/app/screens/register/widgets/password_field_view.dart';
import 'package:amori/app/screens/register/widgets/username_field_view.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/common.dart';
import 'package:amori/common/strings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _email;
  late TextEditingController _password;
  late TextEditingController _confirmPassword;
  late TextEditingController _username;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    _username = TextEditingController();
    _formKey = GlobalKey();
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    _username.dispose();
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        Strings.register,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const AlreadyHaveAnAccountLabelView(),
                    const SizedBox(height: 20.0),
                    EmailFieldView(email: _email),
                    const SizedBox(height: 20.0),
                    UsernameFieldView(username: _username),
                    const SizedBox(height: 20.0),
                    PasswordFieldView(password: _password),
                    const SizedBox(height: 20.0),
                    ConfirmPasswordFieldView(
                      confirmPassword: _confirmPassword,
                      password: _password,
                    ),
                    const SizedBox(height: 40.0),
                    BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          registered: (uid) {
                            Future.delayed(const Duration(seconds: 2)).then(
                              (value) =>
                                  AutoRouter.of(context).replaceNamed("/index"),
                            );
                          },
                          error: (exception) =>
                              ScaffoldMessenger.of(context).showSnackBar(
                            Common.showAppSnackBar(exception),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: OutlinedButton(
                          style: Theme.of(context).outlinedButtonTheme.style,
                          onPressed: () {
                            final confirmPass = _confirmPassword.text;
                            final pass = _password.text;
                            final isFormValid =
                                _formKey.currentState?.validate();
                            if (isFormValid == true &&
                                (pass == confirmPass &&
                                    _username.text.isNotEmpty)) {
                              context.read<AuthBloc>().add(
                                    AuthEvent.register(
                                      _email.text,
                                      pass,
                                      _username.text,
                                    ),
                                  );

                              _confirmPassword.clear();
                              _password.clear();
                              _email.clear();
                              _username.clear();
                            }
                          },
                          child: const Text(Strings.register),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
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
