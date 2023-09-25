import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/app/screens/register/widgets/already_have_an_account_label_view.dart';
import 'package:amori/app/screens/register/widgets/confirm_password_field_view.dart';
import 'package:amori/app/screens/register/widgets/email_field_view.dart';
import 'package:amori/app/screens/register/widgets/password_field_view.dart';
import 'package:amori/app/screens/register/widgets/username_field_view.dart';
import 'package:amori/common/common.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          title: Text(
            'Amori',
            style: GoogleFonts.slacksideOne(
              fontSize: 50,
              color: const Color.fromRGBO(131, 165, 255, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
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
                SizedBox(
                  width: double.infinity,
                  height: 46,
                  child: OutlinedButton(
                    onPressed: () {
                      final confirmPass = _confirmPassword.text;
                      final pass = _password.text;
                      final isFormValid = _formKey.currentState?.validate();
                      if (isFormValid == true &&
                          (pass == confirmPass && _username.text.isNotEmpty)) {
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
                    child: BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          error: (exception) =>
                              ScaffoldMessenger.of(context).showSnackBar(
                            Common.showAppSnackBar(exception),
                          ),
                          registered: (user) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              Common.showAppSnackBar(
                                  'You have been registered.'),
                            );
                            Future.delayed(const Duration(seconds: 1)).then(
                              (value) => AutoRouter.of(context).pop(),
                            );
                          },
                        );
                      },
                      builder: (context, state) => state.maybeWhen(
                        initial: () => Text(
                          'Register',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 20,
                              ),
                        ),
                        loading: () => const SizedBox.shrink(),
                        loggedOut: () => const Text('Register'),
                        registered: (user) => const SizedBox.shrink(),
                        error: (_) => const Text('Register'),
                        orElse: () => const SizedBox.shrink(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}