import 'package:amori/domain/firebaseauthrepository/firebase_storage_repository_impl.dart';
import 'package:amori/domain/firebasecloudrepository/firebase_cloud_storage_impl.dart';
import 'package:amori/domain/models/user/amori_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // User? user;
  String? uid;
  final FirebaseCloudStorageImpl _repository;
  final FirebaseAuthRepositoryImpl _authRepo;

  AuthBloc(this._repository, this._authRepo) : super(const _Initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          startApp: () async {
            await emit.forEach(
              FirebaseAuth.instance.authStateChanges(),
              onData: (currentUser) {
                if (currentUser != null) {
                  // user = currentUser;
                  uid = currentUser.uid;
                  return AuthState.loggedIn(uid!);
                } else {
                  return const AuthState.loggedOut();
                }
              },
            );
          },
          register: (email, password, username) async {
            final String? uid = await _authRepo.register(email, password);
            if (uid?.isNotEmpty == true) {
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
          },
          logIn: (email, password) async {
            final String? uid = await _authRepo.signIn(email, password);
            if (uid?.isNotEmpty == true) {
              this.uid = uid;
              emit(const AuthState.loading());
              emit(AuthState.loggedIn(this.uid!));
            }
          },
          logOut: () async {
            uid = "";
            await _authRepo.logOut();
            emit(const AuthState.loggedOut());
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
            uid = "";
            await _authRepo.delete();
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
