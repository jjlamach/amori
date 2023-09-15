import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_ui_cubit.freezed.dart';

class SignInUICubit extends Cubit<SignInUIState> {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  SignInUICubit(
    this.emailController,
    this.passwordController,
    this.formKey,
  ) : super(
          _SignIn(
            emailController,
            passwordController,
            formKey,
          ),
        );

  void registerScreen() {
    emit(SignInUIState.register(
      emailController,
      passwordController,
      formKey,
    ));
  }

  void signIn() {
    emit(SignInUIState.signIn(
      emailController,
      passwordController,
      formKey,
    ));
  }

  // set email(String email) {
  //   _userEmail = email;
  // }
  //
  // set password(String password) {
  //   _userPassword = password;
  // }

  // String get userEmail => _userEmail;
  //
  // String get userPassword => _userPassword;
}

@freezed
class SignInUIState with _$SignInUIState {
  const SignInUIState._();

  const factory SignInUIState.signIn(TextEditingController email,
      TextEditingController password, GlobalKey<FormState> key) = _SignIn;
  const factory SignInUIState.register(
    TextEditingController email,
    TextEditingController password,
    GlobalKey<FormState> key,
  ) = _Register;
}
