import 'package:amori/domain/models/feeling/daily_feeling_log.dart';
import 'package:amori/domain/models/feeling/feeling_entry.dart';
import 'package:amori/domain/models/user/app_user.dart';
import 'package:amori/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseStorageHelper {
  FirebaseStorageHelper();

  static Future<AppUser?> getUserFromFirestore(String uid) async {
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
      });
      kLogger.i('Feeling recorded successfully');
    } on Exception catch (error) {
      kLogger.e('Failed to record feeling for today. $error');
    }
  }

  static Future<DailyFeelingLog?> fetchUserFeelings(String uid) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      DocumentReference userDoc = users.doc(uid);

      DocumentSnapshot snapshot = await userDoc.get();
      Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;

      if (data != null && data.containsKey('feelingLog')) {
        kLogger.i('Feelings fetched successfully');
        return DailyFeelingLog.fromJson(data['feelingLog']);
      }
    } on Exception catch (e) {
      kLogger.e('Could not fetch AppUsers feelings. $e');
    }
    return null;
  }

  static Future<String?> getFeelingDescriptionOfToday(
    String uid,
  ) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    DocumentReference userDoc = users.doc(uid);

    DocumentSnapshot snapshot = await userDoc.get();
    Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;
    try {
      if (data != null && data.containsKey('feelingLog')) {
        DailyFeelingLog log = DailyFeelingLog.fromJson(data['feelingLog']);

        /// Feeling of today
        String today = DateTime.now().toIso8601String().split('T')[0];

        final todayEntry =
            log.records?.entries.where((element) => element.key == today);
        final String? result = todayEntry?.first.value.feeling;
        kLogger.i('Feeling caught successfully');
        return result;
      }
    } on Exception catch (e) {
      kLogger.e('Error getting the feeling of today: $e');
    }
    return null;
  }

  static Future<void> updateFeeling(
      String uid, String updatedEmotion, String updatedEmotionDescr) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      DocumentReference userDoc = users.doc(uid);

      await userDoc.update({
        'emotionOfToday': updatedEmotion,
        'emotionDescription': updatedEmotionDescr,
      });
      kLogger.i('Feeling updated successfully');
    } on Exception catch (error) {
      kLogger.e('Failed to update feeling for today. $error');
    }
  }
}
