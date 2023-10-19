import 'dart:async';

import 'package:amori/domain/firebasecloudrepository/firebase_cloud_storage.dart';
import 'package:amori/domain/models/user/amori_user.dart';
import 'package:amori/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCloudStorageImpl extends FirebaseCloudStorage {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<AmoriUser?> getUser(String uid) async {
    try {
      CollectionReference users = _firestore.collection('users');
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

  @override
  Future<void> saveUserToFireStore(AmoriUser user) async {
    try {
      await _firestore.collection('users').doc(user.uid).set(user.toJson());
      kLogger.i('User saved successfully');
    } on Exception catch (e) {
      kLogger.e('Could not register and save user to FireStore. $e');
    }
  }
}
