import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeling.freezed.dart';
part 'feeling.g.dart';

@freezed
class FeelingEntry with _$FeelingEntry {
  const factory FeelingEntry({
    String? feeling,
    DateTime? timestamp,
  }) = _FeelingEntry;

  factory FeelingEntry.fromJson(Map<String, dynamic> json) =>
      _$FeelingEntryFromJson(json);
}
