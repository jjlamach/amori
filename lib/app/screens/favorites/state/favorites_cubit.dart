import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(const _Unfavorite(value: false));

  void favoriteFeeling(bool value) {
    emit(FavoriteState.favorite(value: value));
  }

  void unfavoriteFeeling(bool value) {
    emit(FavoriteState.unfavorite(value: value));
  }
}

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.favorite({required bool value}) = _Favorite;
  const factory FavoriteState.unfavorite({required bool value}) = _Unfavorite;
}
