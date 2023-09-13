import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const _Feelings(0));

  void navigateToFavorites(int index) {
    emit(NavigationState.favorites(index));
  }

  void navigateToHome(int index) {
    emit(NavigationState.home(index));
  }

  void navigateToFeelings(int index) {
    emit(NavigationState.feelings(index));
  }
}

@freezed
class NavigationState with _$NavigationState {
  const NavigationState._();
  const factory NavigationState.favorites(int index) = _Favorites;
  const factory NavigationState.home(int index) = _Home;
  const factory NavigationState.feelings(int index) = _Feelings;
}
