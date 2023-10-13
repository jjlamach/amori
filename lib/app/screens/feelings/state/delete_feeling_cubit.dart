import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

enum DeletionState { initial, deleted, error }

class DeletionCubit extends Cubit<DeletionState> {
  DeletionCubit() : super(DeletionState.initial);

  void deleteFeeling(String userId, String dateTime) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('feelings')
          .doc(dateTime)
          .delete();
      emit(DeletionState.deleted);
    } catch (e) {
      emit(DeletionState.error);
    }
  }
}
