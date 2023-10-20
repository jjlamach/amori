import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_cubit.freezed.dart';

enum TagType { personal, work, family, relationships, friends, others }

extension TagTypeX on TagType {
  String get name => toString().split('.').last;
}

class TagCubit extends Cubit<TagState> {
  TagCubit() : super(const TagState.noTag());

  void setTag(TagType tagType, bool selected) {
    switch (tagType) {
      case TagType.personal:
        emit(TagState.personal(selected: selected));
        break;
      case TagType.work:
        emit(TagState.work(selected: selected));
        break;
      case TagType.family:
        emit(TagState.family(selected: selected));
        break;
      case TagType.relationships:
        emit(TagState.relationships(selected: selected));
        break;
      case TagType.friends:
        emit(TagState.friends(selected: selected));
        break;
      case TagType.others:
        emit(TagState.others(selected: selected));
        break;
    }
  }

  void resetTag() {
    emit(const TagState.noTag());
  }
}

@freezed
class TagState with _$TagState {
  const factory TagState.noTag() = _NoTag;
  const factory TagState.personal(
      {@Default('Personal') String tagName,
      required bool selected}) = _Personal;
  const factory TagState.work(
      {@Default('Work') String tagName, required bool selected}) = _Work;
  const factory TagState.family(
      {@Default('Family') String tagName, required bool selected}) = _Family;
  const factory TagState.relationships(
      {@Default('Relationships') String tagName,
      required bool selected}) = _Relationships;
  const factory TagState.friends(
      {@Default('Friends') String tagName, required bool selected}) = _Friends;
  const factory TagState.others(
      {@Default('Others') String tagName, required bool selected}) = _Others;
}
