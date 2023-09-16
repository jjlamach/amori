import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/app/screens/signin/state/register_form_cubit.dart';
import 'package:amori/common/assets.dart';
import 'package:amori/common/common.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController confirmPasswordCtrl = TextEditingController();
    return Scaffold(
      body: BlocBuilder<RegisterFormCubit, RegisterFormState>(
        builder: (context, state) => state.when(
          createdRegisterForm: (
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
                        'Register',
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
                              text: "Already have an account?",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            TextSpan(
                              text: ' Sign in',
                              style: const TextStyle(
                                color: Color.fromRGBO(131, 165, 255, 1),
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  final canGoBack =
                                      AutoRouter.of(context).canNavigateBack;
                                  if (canGoBack) {
                                    AutoRouter.of(context).pop();
                                  }
                                },
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
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: confirmPasswordCtrl,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Confirm Password field required.";
                          }
                          if (value.isNotEmpty &&
                              value != passwordController.text) {
                            return "Password must match.";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: OutlinedButton(
                          onPressed: () {
                            final confirmPass = confirmPasswordCtrl.text;
                            final pass = passwordController.text;
                            final isFormValid =
                                formKey.currentState?.validate();
                            if (isFormValid == true && (pass == confirmPass)) {
                              context.read<AuthBloc>().add(
                                    AuthEvent.register(
                                        emailController.text, pass),
                                  );
                              confirmPasswordCtrl.clear();
                              passwordController.clear();
                              emailController.clear();
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
                                  Future.delayed(const Duration(seconds: 1))
                                      .then(
                                    (value) => AutoRouter.of(context).pop(),
                                  );
                                },
                              );
                            },
                            builder: (context, state) => state.maybeWhen(
                              initial: () => const Text('Register'),
                              loading: () => const SizedBox.shrink(),
                              registered: (user) => const SizedBox.shrink(),
                              error: (_) => const Text('Register'),
                              orElse: () => const SizedBox.shrink(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
