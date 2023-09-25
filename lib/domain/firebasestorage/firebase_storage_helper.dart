import 'package:amori/domain/models/user/app_user.dart';
import 'package:amori/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseStorageHelper {
  FirebaseStorageHelper();

  /// Transforms the json user from FireStore to AppUser
  static Future<AppUser> getUser(String userid) async {
    late AppUser appUser = const AppUser();
    try {
      final userDocRef =
          FirebaseFirestore.instance.collection('users').doc(userid);

      final userRef = await userDocRef.get().then((value) {
        final data = value.data() as Map<String, dynamic>;
        return data;
      });
      appUser = appUser.copyWith(
        uid: userRef['uid'],
        displayName: userRef['displayName'],
        creationTime: userRef['creationDate'],
        email: userRef['email'],
        isAnonymous: userRef['isAnonymous'],
        lastSignedIn: userRef['lastSignedIn'],
        phoneNumber: userRef['phoneNumber'],
        photoURL: userRef['photoURL'],
      );
    } on Exception catch (e) {
      kLogger
          .e('Could not transform the `User` to AppUser and retrieve it. $e');
    }
    return appUser;
  }

  static Future<void> saveUserToFireStore(AppUser user) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .set(user.toJson());
    } on Exception catch (e) {
      kLogger.e('Could not register and save user to FireStore. $e');
    }
  }

  static Future<void> saveFeelingDescription({
    required String userId,
    required String feelingDescription,
  }) async {
    try {
      FirebaseFirestore.instance.collection('users').doc(userId).set(
        {
          'feelingDescription': [
            {
              DateTime.utc(2023).toIso8601String(): feelingDescription,
            },
          ],
        },
        SetOptions(
          merge: true,
        ),
      );
      kLogger.i('Feeling recorded successfully.');
    } on Exception catch (e) {
      kLogger.e('Failed to save feeling description. $e');
    }
  }
}
