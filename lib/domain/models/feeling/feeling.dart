import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeling.freezed.dart';
part 'feeling.g.dart';

@freezed
class Feeling with _$Feeling {
  const factory Feeling({
    @Default('') String feeling,
    @Default('') String feelingDescription,
    @Default(false) bool isFavorite,
  }) = _Feeling;

  factory Feeling.fromJson(Map<String, dynamic> json) =>
      _$FeelingFromJson(json);
}
