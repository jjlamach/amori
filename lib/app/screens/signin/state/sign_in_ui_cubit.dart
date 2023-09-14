import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Base class that represents main state
abstract class SignInUIState extends Equatable {}

// Sub-states
class SignInInitialState extends SignInUIState {
  // Equal to itself with 0 properties
  @override
  List<Object?> get props => [];
}

class SignInRegisterState extends SignInUIState {
  @override
  List<Object?> get props => [];
}

class SignInUICubit extends Cubit<SignInUIState> {
  SignInUICubit() : super(SignInInitialState());

  void registerScreen() {
    emit(SignInRegisterState());
  }

  void initialState() {
    emit(SignInInitialState());
  }
}
