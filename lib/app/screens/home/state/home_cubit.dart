import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const _Initial());

  void resetState() {
    emit(const HomeState.initial());
  }

  void emotionSelected(String emotion) {
    emit(HomeState.emotionSelected(emotion));
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.error(Exception e) = _Error;
  const factory HomeState.emotionSelected(String emotionSelected) =
      _EmotionSelected;
}
