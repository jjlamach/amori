import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotion_cubit.freezed.dart';

class EmotionCubit extends Cubit<EmotionState> {
  EmotionCubit() : super(const _Initial());

  void resetState() {
    emit(const EmotionState.initial());
  }

  void emotionSelected(String uid, String emotion) async {
    await FirebaseStorageHelper.updateFeeling(uid, emotion);
    emit(EmotionState.emotionSelected(emotion));
  }
}

@freezed
class EmotionState with _$EmotionState {
  const factory EmotionState.initial() = _Initial;
  const factory EmotionState.editingEmotion() = _Editing;
  const factory EmotionState.editingDone() = _Done;
  const factory EmotionState.emotionSelected(String emotion) = _Selected;
}
