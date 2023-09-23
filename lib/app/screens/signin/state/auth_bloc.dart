import 'package:amori/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  User? _user;

  User? get user => _user;

  set user(User? value) {
    _user = value;
  }

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
              emit(const AuthState.loading());
              emit(AuthState.registered(userCredential.user));
              // Reset state after registering user
              emit(const AuthState.initial());
            } on FirebaseAuthException catch (e) {
              if (e.code == 'weak-password') {
                emit(const AuthState.error('Password is too weak.'));
                emit(const AuthState.initial());
                kLogger.e('Password provided is too weak.');
              } else if (e.code == 'email-already-in-use') {
                emit(const AuthState.error('Email is already in use.'));
                emit(const AuthState.initial());
                kLogger.i('Email provided is already in use.');
              }
            } catch (e) {
              emit(const AuthState.initial());
              kLogger.e('Error: $e');
            }
          },
          logIn: (email, password) async {
            try {
              UserCredential userCredential =
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: email,
                password: password,
              );
              _user = userCredential.user;
              emit(const AuthState.loading());
              emit(AuthState.loggedIn(userCredential.user));
            } on FirebaseAuthException catch (e) {
              emit(const AuthState.error('Invalid login credentials.'));
              emit(const AuthState.initial());
            }
          },
          logOut: () async {
            try {
              await FirebaseAuth.instance.signOut();
              emit(const AuthState.loggedOut());
            } catch (e) {
              emit(AuthState.error(e.toString()));
            }
          },
          delete: () async {
            try {
              await FirebaseAuth.instance.currentUser?.delete();
              emit(const AuthState.deletedAccount());
            } on FirebaseAuthException catch (e) {
              emit(AuthState.error(e.code));
            }
          },
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
  const factory AuthState.deletedAccount() = _Deleted;
  const factory AuthState.error(String exception) = _Error;
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register(
    String email,
    String password,
  ) = _Register;
  const factory AuthEvent.logIn(
    String email,
    String password,
  ) = _LogIn;
  const factory AuthEvent.logOut() = _LogOut;
  const factory AuthEvent.delete() = _Delete;
}
