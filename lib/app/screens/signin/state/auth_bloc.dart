import 'package:amori/domain/firebasecloudrepository/firebase_cloud_storage_impl.dart';
import 'package:amori/domain/models/user/amori_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String? uid;
  final FirebaseCloudStorageImpl _repository;

  AuthBloc(this._repository) : super(const _Initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          startApp: () async {
            await emit.forEach(
              FirebaseAuth.instance.authStateChanges(),
              onData: (currentUser) {
                if (currentUser != null) {
                  uid = currentUser.uid;
                  return AuthState.loggedIn(uid!);
                } else {
                  return const AuthState.loggedOut();
                }
              },
            );
          },
          register: (email, password, username) async {
            try {
              final credentials =
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: password,
              );
              final String? uid = credentials.user?.uid;
              if (uid?.isNotEmpty == true) {
                this.uid = uid;
                AmoriUser user = AmoriUser(
                  uid: uid,
                  email: email,
                  password: password,
                  displayName: username,
                );
                await _repository.saveUserToFireStore(user);
                emit(const AuthState.loading());
                emit(AuthState.registered(uid!));
                emit(const AuthState.initial());
              }
            } on FirebaseAuthException catch (e) {
              switch (e.code) {
                case 'email-already-in-use':
                  emit(const AuthState.error(
                      'Email is already in use. Try a different one.'));
                  break;
                case 'invalid-email':
                  emit(const AuthState.error('Invalid email'));
                  break;
                case 'operation-not-allowed':
                  emit(const AuthState.error(
                      'Your email has been disabled. Contact the developer for help.'));
                  break;
                case 'weak-password':
                  emit(const AuthState.error(
                      'Your password is not strong enough. Try a different one'));
              }
              emit(const AuthState.initial());
            }
          },
          logIn: (email, password) async {
            try {
              final credentials = await FirebaseAuth.instance
                  .signInWithEmailAndPassword(email: email, password: password);
              final String uid = credentials.user?.uid ?? '';
              if (uid.isNotEmpty == true) {
                this.uid = uid;
                emit(const AuthState.loading());
                emit(AuthState.loggedIn(uid));
              }
            } on FirebaseAuthException catch (e) {
              switch (e.code) {
                case 'invalid-email':
                  emit(const AuthState.error('Invalid email.'));
                  break;
                case 'user-disabled':
                  emit(
                      const AuthState.error('This account has been disabled.'));
                  break;
                case 'user-not-found':
                  emit(const AuthState.error('User could not be found.'));
                  break;
                case 'Wrong-password':
                  emit(const AuthState.error('Incorrect password'));
                  break;
                default:
                  emit(
                    const AuthState.error(
                        'Something went wrong. Please try again later.'),
                  );
              }
              emit(const AuthState.initial());
            }
          },
          logOut: () async {
            try {
              uid = "";
              await FirebaseAuth.instance.signOut();
              emit(const AuthState.loggedOut());
            } on FirebaseAuthException catch (e) {
              emit(AuthState.error(e.code));
            }
          },
          forgotPassword: (String email) async {
            try {
              await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
              emit(AuthState.forgotPassword(email));
            } on FirebaseAuthException catch (e) {
              switch (e.code) {
                case 'invalid-email':
                  emit(const AuthState.error('Invalid email'));
                  break;
                case 'user-not-found':
                  emit(const AuthState.error('User not found.'));
                  break;
                default:
                  emit(const AuthState.error(
                      'Something went wrong. Please try again later'));
              }
              emit(AuthState.error(e.code));
            }
          },
          delete: () async {
            uid = "";
            await FirebaseAuth.instance.currentUser?.delete();
            emit(const AuthState.deletedAccount());
          },
        );
      },
    );
  }

  String? getUser() {
    return uid;
  }
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.registered(String uid) = _Registered;

  const factory AuthState.loggedIn(String uid) = _LoggedIn;

  const factory AuthState.loggedOut() = _LoggedOut;

  const factory AuthState.forgotPassword(String email) =
      _ForgotPasswordEmailSent;

  const factory AuthState.deletedAccount() = _Deleted;

  const factory AuthState.error(String exception) = _Error;

  const factory AuthState.appStarted() = _AppStarted;
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.startApp() = _StartApp;

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
