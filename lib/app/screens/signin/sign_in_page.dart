import 'package:amori/app/screens/forgottenpassword/forgotten_password_page.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/app/screens/signin/state/sign_in_form_cubit.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/common/common.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
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
        child: BlocBuilder<SignInFormCubit, SignInFormState>(
          builder: (context, state) {
            return state.when(
              formCreated: (
                formKey,
                emailController,
                passwordController,
              ) {
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
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: "Don't have an account yet?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                TextSpan(
                                  text: ' Register',
                                  style: const TextStyle(
                                    color: Color.fromRGBO(131, 165, 255, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => AutoRouter.of(context)
                                        .pushNamed('/register'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email field required.";
                              } else if (value.isNotEmpty) {
                                final isValid = value.isValidEmail();
                                if (!isValid) {
                                  return "Not a valid email.";
                                }
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password field required.";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgottenPasswordPage(),
                                ),
                              ),
                              child: const Text("Forgotten Password?"),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          BlocListener<AuthBloc, AuthState>(
                            listener: (context, state) {
                              state.whenOrNull(
                                loggedIn: (user) {
                                  emailController.clear();
                                  passwordController.clear();
                                  AutoRouter.of(context).replaceNamed('/index');
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
                                onPressed: () {
                                  final isFormValid =
                                      formKey.currentState?.validate();
                                  if (isFormValid == true) {
                                    context.read<AuthBloc>().add(
                                          AuthEvent.logIn(
                                            emailController.text,
                                            passwordController.text,
                                          ),
                                        );
                                  }
                                },
                                child: const Text('Sign in'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
