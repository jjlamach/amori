abstract class FirebaseAuthRepository {
  Future<String?> register(String email, String password);
  Future<void> delete();
  Future<String?> signIn(String email, String password);
  Future<void> logOut();
}
