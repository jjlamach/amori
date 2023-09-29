import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_emotion_cubit.freezed.dart';

class EditEmotionCubit extends Cubit<EditEmotionState> {
  EditEmotionCubit() : super(const _Initial());

  void initial() {
    emit(const EditEmotionState.initial());
  }

  void editingEmotion() {
    emit(const EditEmotionState.editingEmotion());
  }

  void editingEmotionDone() {
    emit(const EditEmotionState.editingDone());
  }

  void emotionSelected(String emotion) {
    emit(EditEmotionState.emotionSelected(emotion));
  }
}

@freezed
class EditEmotionState with _$EditEmotionState {
  const factory EditEmotionState.initial() = _Initial;
  const factory EditEmotionState.editingEmotion() = _Editing;
  const factory EditEmotionState.editingDone() = _Done;
  const factory EditEmotionState.emotionSelected(String emotion) = _Selected;
}
