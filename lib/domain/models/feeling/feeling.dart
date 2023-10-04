import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeling.freezed.dart';
part 'feeling.g.dart';

@freezed
class Feeling with _$Feeling {
  Feeling._();

  factory Feeling({
    @Default('') String feeling,
    @Default('') String feelingDescription,
    @Default(false) bool isFavorite,
    DateTime? dateTime,
  }) = _Feeling;

  // Factory constructor to create an instance of feelings from a map
  factory Feeling.fromMap(Map<String, dynamic> map) {
    return Feeling(feeling: map['feelings']);
  }

  factory Feeling.fromJson(Map<String, dynamic> json) =>
      _$FeelingFromJson(json);
}
