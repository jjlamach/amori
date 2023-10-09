import 'package:amori/domain/models/user/amori_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const _Initial());

  void resetState() {
    emit(const HomeState.initial());
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.user(AmoriUser user) = _User;
  const factory HomeState.error(String e) = _Error;
}
