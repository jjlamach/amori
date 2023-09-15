import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_ui_cubit.freezed.dart';

class SignInUICubit extends Cubit<SignInUIState> {
  SignInUICubit()
      : super(
          const _SignIn(),
        );

  void registerScreen() {
    emit(const SignInUIState.register());
  }

  void signIn() {
    emit(const SignInUIState.signIn());
  }
}

@freezed
class SignInUIState with _$SignInUIState {
  const factory SignInUIState.signIn() = _SignIn;
  const factory SignInUIState.register() = _Register;
}
