import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/domain/models/user/amori_user.dart';
import 'package:amori/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AmoriUser? currentUser;
  final FirebaseStorageRepository _repository;
  AuthBloc(this._repository) : super(const _Initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          register: (email, password, username) async {
            try {
              UserCredential userCredential =
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: password,
              );

              AmoriUser user = AmoriUser(
                uid: userCredential.user?.uid,
                email: email,
                password: password,
                displayName: username,
              );
              currentUser = user;
              await _repository.saveUserToFireStore(user);
              emit(const AuthState.loading());
              emit(AuthState.registered(user));
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

              // Get user saved in database
              currentUser = await _repository
                  .getUserFromFireStore(userCredential.user?.uid ?? '');

              // pass a non-nullable user copy of it
              final user = AmoriUser(
                displayName: currentUser?.displayName,
                password: currentUser?.password,
                email: currentUser?.email,
                uid: currentUser?.uid,
                feelings: currentUser?.feelings,
              );

              emit(const AuthState.loading());
              emit(
                AuthState.loggedIn(
                  user,
                  user.feelings ?? List<Feeling>.empty(),
                ),
              );
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
          forgotPassword: (String email) async {
            try {
              await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
              emit(AuthState.forgotPassword(email));
            } on FirebaseAuthException catch (e) {
              emit(AuthState.error(e.code));
            }
          },
          delete: () async {
            try {
              await FirebaseAuth.instance.currentUser?.delete();
              kLogger.i('Account deleted.');
              emit(const AuthState.deletedAccount());
            } on FirebaseAuthException catch (e) {
              kLogger.e('Could not delete account');
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
  const factory AuthState.registered(AmoriUser user) = _Registered;
  const factory AuthState.loggedIn(AmoriUser user, List<Feeling> feelings) =
      _LoggedIn;
  const factory AuthState.loggedOut() = _LoggedOut;
  const factory AuthState.forgotPassword(String email) =
      _ForgotPasswordEmailSent;
  const factory AuthState.deletedAccount() = _Deleted;
  const factory AuthState.error(String exception) = _Error;
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register(
    String email,
    String password,
    String username,
  ) = _Register;
  const factory AuthEvent.logIn(
    String email,
    String password,
  ) = _LogIn;
  const factory AuthEvent.logOut() = _LogOut;
  const factory AuthEvent.delete() = _Delete;
  const factory AuthEvent.forgotPassword(String email) = _ForgotPassword;
}
