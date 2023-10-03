import 'package:amori/domain/models/feeling/feeling_entry.dart';
import 'package:amori/domain/models/user/app_user.dart';
import 'package:amori/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseStorageHelper {
  FirebaseStorageHelper();

  static Future<AppUser?> getUserFromFireStore(String uid) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      DocumentReference userDoc = users.doc(uid);

      DocumentSnapshot snapshot = await userDoc.get();
      if (snapshot.exists) {
        Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
        kLogger.i('User retrieved successfully');
        return AppUser.fromJson(data);
      }
    } on Exception catch (e) {
      kLogger.e('Error trying to get user. $e');
    }
    return null;
  }

  static Future<void> saveUserToFireStore(AppUser user) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .set(user.toJson());
      kLogger.i('User saved successfully');
    } on Exception catch (e) {
      kLogger.e('Could not register and save user to FireStore. $e');
    }
  }

  static Future<void> addOrUpdateFeelingForToday({
    required String uid,
    required FeelingEntry newFeeling,
    required String emotionOfToday,
    required String emotionDescriptionOfToday,
    required String tagSelected,
  }) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      DocumentReference userDoc = users.doc(uid);

      // Convert today's date to the format YYYY-MM-DD
      String today = DateTime.now().toIso8601String().split('T')[0];

      // Update the feeling log for today's date
      await userDoc.update({
        'feelingLog.records.$today': newFeeling.toJson(),
        'emotionOfToday': emotionOfToday,
        'emotionDescription': emotionDescriptionOfToday,
        'tag': tagSelected,
      });
      kLogger.i('Feeling recorded successfully');
    } on Exception catch (error) {
      kLogger.e('Failed to record feeling for today. $error');
    }
  }

  static Future<void> updateFeeling(String uid, String updatedEmotion,
      String updatedEmotionDescr, String tag) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      DocumentReference userDoc = users.doc(uid);

      await userDoc.update({
        'emotionOfToday': updatedEmotion,
        'emotionDescription': updatedEmotionDescr,
        'tag': tag,
      });
      kLogger.i('Feeling updated successfully');
    } on Exception catch (error) {
      kLogger.e('Failed to update feeling for today. $error');
    }
  }
}
