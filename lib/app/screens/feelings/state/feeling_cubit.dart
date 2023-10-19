import 'dart:async';

import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FeelingCubit extends Cubit<Feeling> {
  StreamSubscription? _feelingSubscription;
  final userCollection = FirebaseFirestore.instance.collection('users');

  FeelingCubit() : super(Feeling());

  void watchFeeling(String userId, String dateTime) async {
    _feelingSubscription?.cancel();
    _feelingSubscription = userCollection
        .doc(userId)
        .collection('feelings')
        .doc(dateTime)
        .snapshots()
        .listen((snapshot) {
      if (snapshot.exists) {
        final data = snapshot.data();
        if (data != null) {
          emit(Feeling.fromJson(data));
        }
      } else {
        emit(Feeling());
      }
    });
  }

  @override
  Future<void> close() {
    _feelingSubscription?.cancel();
    return super.close();
  }
}
