import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tags_cubit.freezed.dart';

class TagCubit extends Cubit<TagState> {
  TagCubit() : super(const _Personal(selected: false));

  void tagPersonal(bool selected) {
    emit(TagState.personal(selected: selected));
  }

  void tagWork(bool selected) {
    emit(TagState.work(selected: selected));
  }

  void tagFamily(bool selected) {
    emit(TagState.family(selected: selected));
  }

  void tagRelationships(bool selected) {
    emit(TagState.relationships(selected: selected));
  }
}

@freezed
class TagState with _$TagState {
  const factory TagState.personal({
    @Default('Personal') String tagName,
    required bool selected,
  }) = _Personal;
  const factory TagState.work({
    @Default('Work') String tagName,
    required bool selected,
  }) = _Work;
  const factory TagState.family({
    @Default('Family') String tagName,
    required bool selected,
  }) = _Family;
  const factory TagState.relationships({
    @Default('Relationships') String tagName,
    required bool selected,
  }) = _Relationships;
}
