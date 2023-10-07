import 'package:amori/domain/models/feeling/feeling.dart';
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

        final feelings = await getFeelingsOfUser(uid);

        final amori = AmoriUser(
          email: data['email'],
          uid: data['uid'],
          password: data['password'],
          displayName: data['displayName'],
          feelings: feelings,
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

  Future<void> addFeeling({
    required String uid,
    required String feelingImg,
    required String feelingDescription,
    required DateTime dateTime,
    required String tag,
    bool? isFavorite,
  }) async {
    Feeling feeling = Feeling(
      feeling: feelingImg,
      feelingDescription: feelingDescription,
      dateTime: dateTime,
      tag: tag,
      isFavorite: isFavorite ?? false,
    );

    String today =
        DateTime.now().toString().substring(0, 10); // 'yyyy-MM-dd' format

    await _db
        .collection('users')
        .doc(uid)
        .collection('feelings')
        .doc(today)
        .set(feeling.toJson());
  }

  /// Private methods
  Future<List<Feeling>> getFeelingsOfUser(String uid) async {
    QuerySnapshot feelingsCollection =
        await _db.collection('users').doc(uid).collection('feelings').get();
    List<Feeling> feelings = [];
    for (var x in feelingsCollection.docs) {
      final data = x.data() as Map<String, dynamic>;
      final feeling = Feeling.fromJson(data);
      if (!feelings.contains(feeling)) {
        feelings.add(feeling);
      }
    }
    return feelings;
  }
}
