import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:amori/main.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotion_form_cubit.freezed.dart';

class EmotionFormCubit extends Cubit<EmotionFormState> {
  EmotionFormCubit() : super(const _Initial());

  void fillingDescription({
    String? feeling,
    String? feelingDescription,
    String? tag,
    String? dateTime,
    bool? isFavorite,
  }) {
    emit(
      _EmotionForm(
        Feeling(
          tag: tag ?? '',
          feelingDescription: feelingDescription ?? '',
          dateTime: dateTime ?? '',
          isFavorite: isFavorite ?? false,
          feeling: feeling ?? '',
        ),
      ),
    );
  }

  void reset() {
    emit(const _Initial());
  }

  @override
  void onChange(Change<EmotionFormState> change) {
    super.onChange(change);
    kLogger.i('EmotionFormCubit: $change');
  }
}

@freezed
class EmotionFormState with _$EmotionFormState {
  const factory EmotionFormState.initial() = _Initial;
  const factory EmotionFormState.emotionForm(Feeling feeling) = _EmotionForm;
}
