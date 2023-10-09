import 'package:amori/domain/models/user/amori_user.dart';
import 'package:amori/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseStorageRepository {
  final _db = FirebaseFirestore.instance;

  Future<AmoriUser?> getUserFromFireStore(String uid) async {
    try {
      CollectionReference users = _db.collection('users');
      DocumentReference userDoc = users.doc(uid);

      DocumentSnapshot snapshot = await userDoc.get();

      if (snapshot.exists) {
        Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

        final amori = AmoriUser(
          email: data['email'],
          uid: data['uid'],
          password: data['password'],
          displayName: data['displayName'],
        );
        kLogger.i('User retrieved successfully');
        return amori;
      }
    } on Exception catch (e) {
      kLogger.e('Error trying to get user. $e');
    }
    return null;
  }

  Future<void> saveUserToFireStore(AmoriUser user) async {
    try {
      await _db.collection('users').doc(user.uid).set(user.toJson());
      kLogger.i('User saved successfully');
    } on Exception catch (e) {
      kLogger.e('Could not register and save user to FireStore. $e');
    }
  }

  Future<void> favoriteFeeling(String uid, String dateRecorded) async {
    try {
      await _db
          .collection('users')
          .doc(uid)
          .collection('feelings')
          .doc(dateRecorded)
          .update({
        'isFavorite': true,
      });
      kLogger.i('Feeling was added to favorites.');
    } on FirebaseException catch (e) {
      kLogger.e('Could not favorite feeling. $e');
    }
  }

  Future<void> unfavoriteFeeling(String uid, String dateRecorded) async {
    try {
      await _db
          .collection('users')
          .doc(uid)
          .collection('feelings')
          .doc(dateRecorded)
          .update({
        'isFavorite': false,
      });
      kLogger.i('Feeling was removed from favorites.');
    } on FirebaseException catch (e) {
      kLogger.e('Could not unfavorite feeling. $e');
    }
  }
}
