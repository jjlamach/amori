import 'package:amori/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          register: (email, password) async {
            try {
              UserCredential userCredential =
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: password,
              );
              emit(AuthState.registered(userCredential.user));
            } on FirebaseAuthException catch (e) {
              if (e.code == 'weak-password') {
                emit(AuthState.error(e));
                kLogger.e('Password provided is too weak.');
              } else if (e.code == 'email-already-in-use') {
                emit(AuthState.error(e));
                kLogger.i('Email provided is already in use.');
              }
            } catch (e) {
              kLogger.e('Error: $e');
            }
          },
          logIn: () {},
          logOut: () {},
        );
      },
    );
  }
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.registered(User? user) = _Registered;
  const factory AuthState.loggedIn(User? user) = _LoggedIn;
  const factory AuthState.loggedOut() = _LoggedOut;
  const factory AuthState.error(FirebaseAuthException exception) = _Error;
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register(
    String email,
    String password,
  ) = _Register;
  const factory AuthEvent.logIn() = _LogIn;
  const factory AuthEvent.logOut() = _LogOut;
}
