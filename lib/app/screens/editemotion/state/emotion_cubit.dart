import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotion_cubit.freezed.dart';

class EmotionCubit extends Cubit<EmotionState> {
  final FirebaseStorageRepository _repository;
  EmotionCubit(this._repository) : super(const _Initial());

  void resetState() {
    emit(const EmotionState.initial());
  }

  void fetchCurrentFeelings() async {
    try {
      final uid = FirebaseAuth.instance.currentUser?.uid ?? '';
      final List<Feeling> feelings = await _repository.getFeelingsOfUser(uid);
      if (feelings.isNotEmpty) {
        emit(const EmotionState.loading());
        emit(EmotionState.loadedFeelings(feelings));
      } else {
        emit(const EmotionState.emptyFeelingsList());
      }
    } on FirebaseException catch (e) {
      emit(EmotionState.error(e.code));
    }
  }

  void emotionSelected(
    String uid,
    String emotion,
    String emotionDescription,
    String tag,
    DateTime dateTime,
  ) async {
    await _repository.addFeeling(
      uid: uid,
      feelingImg: emotion,
      feelingDescription: emotionDescription,
      dateTime: dateTime,
      tag: tag,
    );
    emit(EmotionState.emotionSelected(emotion, emotionDescription, tag));
  }
}

@freezed
class EmotionState with _$EmotionState {
  const factory EmotionState.initial() = _Initial;
  const factory EmotionState.loading() = _Loading;
  const factory EmotionState.loadedFeelings(List<Feeling> feelings) = _Loaded;
  const factory EmotionState.emptyFeelingsList() = _Empty;
  const factory EmotionState.editingEmotion() = _Editing;
  const factory EmotionState.editingDone() = _Done;
  const factory EmotionState.emotionSelected(
    String emotion,
    String emotionDescription,
    String tag,
  ) = _Selected;

  const factory EmotionState.error(String error) = _Error;
}
