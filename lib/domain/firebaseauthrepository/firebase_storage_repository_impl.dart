import 'package:amori/domain/firebaseauthrepository/firebase_auth_repository.dart';
import 'package:amori/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepositoryImpl extends FirebaseAuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> delete() async {
    try {
      return await _firebaseAuth.currentUser?.delete();
    } on FirebaseAuthException catch (e) {
      kLogger.e('Could not delete user. $e');
    }
  }

  @override
  Future<void> logOut() async {
    try {
      return await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      kLogger.e('Could not log out. $e');
    }
  }

  @override
  Future<String?> register(String email, String password) async {
    try {
      final UserCredential credential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;
    } on FirebaseAuthException catch (e) {
      kLogger.e('Could not register user. $e');
    }
    return "";
  }

  @override
  Future<String?> signIn(String email, String password) async {
    try {
      final UserCredential credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;
    } on FirebaseAuthException catch (e) {
      kLogger.e('Could not sign in user. $e');
    }
    return "";
  }
}
