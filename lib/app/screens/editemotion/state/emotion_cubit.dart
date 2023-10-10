import 'dart:async';

import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/main.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotion_cubit.freezed.dart';

class EmotionCubit extends Cubit<List<Feeling>> {
  final userCollection = FirebaseFirestore.instance.collection('users');
  StreamSubscription? _feelingsSubscription;
  StreamSubscription? _favoriteStreamSubscription;
  EmotionCubit() : super([]);

  void watchFeelings(String userId) {
    _feelingsSubscription?.cancel();
    _feelingsSubscription = userCollection
        .doc(userId)
        .collection('feelings')
        .snapshots()
        .listen((snapshot) {
      final feelings =
          snapshot.docs.map((doc) => Feeling.fromJson(doc.data())).toList();
      emit(feelings);
    });
  }

  void watchFavoriteFeelings(String userId) {
    _favoriteStreamSubscription?.cancel();
    _favoriteStreamSubscription = userCollection
        .doc(userId)
        .collection('feelings')
        .where('isFavorite', isEqualTo: true)
        .snapshots()
        .listen((snapshot) {
      final List<Feeling> updatedFavoriteFeelings = snapshot.docs.map((doc) {
        return Feeling.fromJson(doc.data());
      }).toList();
      emit(updatedFavoriteFeelings);
    });
  }

  Future<void> addFeeling(String userId, Feeling newFeeling) async {
    final String dateId = newFeeling.dateTime;
    final docRef =
        userCollection.doc(userId).collection('feelings').doc(dateId);

    // final docSnap = await docRef.get();

    // if (docSnap.exists) {
    //   // Already added a feeling today
    //   return;
    // }

    await docRef.set(newFeeling.toJson());
  }

  Future<void> favoriteFeeling(String uid, String dateId) async {
    try {
      userCollection.doc(uid).collection('feelings').doc(dateId).update(
        {
          'isFavorite': true,
        },
      );
      kLogger.i('Feeling was added to Favorites.');
    } on FirebaseException catch (e) {
      kLogger.e('Could not favorite Feeling., ${e.code}');
    }
  }

  Future<void> unfavoriteFeeling(String uid, String dateId) async {
    try {
      userCollection.doc(uid).collection('feelings').doc(dateId).update(
        {
          'isFavorite': false,
        },
      );
      kLogger.i('Feeling was removed from Favorites.');
    } on FirebaseException catch (e) {
      kLogger.e('Could not remove Feeling from Favorites, ${e.code}');
    }
  }

  Future<List<Feeling>> getFavoriteFeelings(String uid) async {
    final Query query = FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection('feelings')
        .where('isFavorite', isEqualTo: true);

    final QuerySnapshot querySnapshot = await query.get();

    return querySnapshot.docs.map((doc) {
      return Feeling.fromJson(doc.data() as Map<String, dynamic>);
    }).toList();
  }

  @override
  Future<void> close() {
    _feelingsSubscription?.cancel();
    return super.close();
  }
}

@freezed
class EmotionState with _$EmotionState {
  const factory EmotionState.error(String error) = _Error;
}
