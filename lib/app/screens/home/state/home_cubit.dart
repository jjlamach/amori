import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const _Unfavorite(value: false));

  void resetState() {
    emit(const HomeState.initial());
  }

  void favorite(String uid, bool favorite) async {
    await FirebaseStorageHelper.addFavorite(uid, favorite);
    emit(HomeState.favorite(value: favorite));
  }

  void unfavorite(bool unfavorite) {
    emit(HomeState.unfavorite(value: unfavorite));
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.error(Exception e) = _Error;
  const factory HomeState.emotionSelected(String emotionSelected) =
      _EmotionSelected;
  const factory HomeState.favorite({@Default(true) bool value}) = _Favorite;
  const factory HomeState.unfavorite({@Default(false) bool value}) =
      _Unfavorite;
}
