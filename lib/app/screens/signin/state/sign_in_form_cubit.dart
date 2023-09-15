import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_form_cubit.freezed.dart';

class SignInFormCubit extends Cubit<SignInFormState> {
  final GlobalKey<FormState> _formKey;
  final TextEditingController _email;
  final TextEditingController _password;

  SignInFormCubit(this._formKey, this._email, this._password)
      : super(_SignInFormCreated(
          _formKey,
          _email,
          _password,
        ));

  void createSignInForm() {
    emit(SignInFormState.formCreated(_formKey, _email, _password));
  }
}

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState.formCreated(
    GlobalKey<FormState> formKey,
    TextEditingController email,
    TextEditingController password,
  ) = _SignInFormCreated;
}
