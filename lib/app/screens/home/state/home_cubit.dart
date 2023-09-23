import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
import 'package:amori/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const _Initial());

  void greetUser() async {
    try {
      final currentUserId = FirebaseAuth.instance.currentUser?.uid;
      final username = await FirebaseStorageHelper.getUser(currentUserId ?? '');
      emit(HomeState.greetUser(username.displayName ?? ''));
    } on Exception catch (e) {
      kLogger.e('Could not greet the user. $e');
      emit(HomeState.error(e));
    }
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.greetUser(String username) = _GreetUser;
  const factory HomeState.error(Exception e) = _Error;
}
