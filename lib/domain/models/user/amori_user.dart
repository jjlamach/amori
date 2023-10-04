import 'package:amori/domain/models/feeling/feeling.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'amori_user.freezed.dart';
part 'amori_user.g.dart';

@freezed
class AmoriUser with _$AmoriUser {
  const factory AmoriUser({
    @Default('') String? uid,
    @Default('') String? displayName,
    @Default('') String? email,
    @Default('') String? password,
    @Default([]) List<Feeling>? feelings,
  }) = _AmoriUser;

  factory AmoriUser.fromJson(Map<String, dynamic> json) =>
      _$AmoriUserFromJson(json);
}
