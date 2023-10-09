import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FirebaseStorageRepository _repository;
  FavoriteCubit(this._repository) : super(const _Unfavorite());

  void favoriteFeeling({
    required String uid,
    required String feelingDate,
  }) async {
    try {
      await _repository.favoriteFeeling(uid, feelingDate);
      emit(const FavoriteState.favorite());
    } on FirebaseException catch (e) {
      emit(FavoriteState.error(e.code));
    }
  }

  void unfavoriteFeeling({
    required String uid,
    required String feelingDate,
  }) async {
    await _repository.unfavoriteFeeling(uid, feelingDate);
    emit(const FavoriteState.unfavorite());
  }
}

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.favorite() = _Favorite;
  const factory FavoriteState.unfavorite() = _Unfavorite;
  const factory FavoriteState.error(String error) = _Error;
}
