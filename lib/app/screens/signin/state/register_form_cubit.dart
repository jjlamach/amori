import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_form_cubit.freezed.dart';

class RegisterFormCubit extends Cubit<RegisterFormState> {
  final GlobalKey<FormState> _formKey;
  final TextEditingController _email;
  final TextEditingController _password;

  RegisterFormCubit(this._formKey, this._email, this._password)
      : super(_RegisterForm(_formKey, _email, _password));

  void createRegisterForm() {
    emit(RegisterFormState.createdRegisterForm(_formKey, _email, _password));
  }
}

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState.createdRegisterForm(
    GlobalKey<FormState> formKey,
    TextEditingController email,
    TextEditingController password,
  ) = _RegisterForm;
}
