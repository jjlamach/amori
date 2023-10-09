import 'dart:async';

import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/main.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'emotion_cubit.freezed.dart';

class EmotionCubit extends Cubit<List<Feeling>> {
  final userCollection = FirebaseFirestore.instance.collection('users');
  StreamSubscription? _subscription;
  EmotionCubit() : super([]);

  void watchFeelings(String userId) {
    _subscription?.cancel();
    _subscription = userCollection
        .doc(userId)
        .collection('feelings')
        .snapshots()
        .listen((snapshot) {
      final feelings =
          snapshot.docs.map((doc) => Feeling.fromJson(doc.data())).toList();
      emit(feelings);
    });
  }

  Future<void> addFeeling(String userId, Feeling newFeeling) async {
    final String dateId = DateFormat('yyyy-MM-dd').format(DateTime.now());
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

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

@freezed
class EmotionState with _$EmotionState {
  const factory EmotionState.error(String error) = _Error;
}
