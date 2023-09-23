import 'package:amori/domain/models/user/app_user.dart';
import 'package:amori/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseStorageHelper {
  final FirebaseFirestore? database;
  FirebaseStorageHelper({this.database});

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
        uuid: userRef['uuid'],
        displayName: userRef['displayName'],
        creationTime: userRef['creationTime'],
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

  static Future<void> saveUserToFireStore(User? user, String username) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(user?.uid).set(
        {
          'uuid': user?.uid,
          'email': user?.email,
          'photoUrl': user?.photoURL,
          'phoneNumber': user?.phoneNumber,
          'isAnonymous': user?.isAnonymous,
          'displayName': username,
          'creationDate': user?.metadata.creationTime,
        },
      );
    } on Exception catch (e) {
      kLogger.e('Could not register and save user to FireStore. $e');
    }
  }
}
