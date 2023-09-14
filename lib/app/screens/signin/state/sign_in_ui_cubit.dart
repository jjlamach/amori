import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_ui_cubit.freezed.dart';

class SignInUICubit extends Cubit<SignInUIState> {
  SignInUICubit() : super(const _Initial());

  void registerScreen() {
    emit(const SignInUIState.register());
  }

  void initialState() {
    emit(const SignInUIState.initial());
  }
}

@freezed
class SignInUIState with _$SignInUIState {
  const SignInUIState._();
  const factory SignInUIState.initial() = _Initial;
  const factory SignInUIState.register() = _Register;
}
