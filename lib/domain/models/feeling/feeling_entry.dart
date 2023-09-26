import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeling_entry.freezed.dart';
part 'feeling_entry.g.dart';

@freezed
class FeelingEntry with _$FeelingEntry {
  const factory FeelingEntry({
    String? feeling,
    DateTime? recordedAt,
  }) = _FeelingEntry;

  factory FeelingEntry.fromJson(Map<String, dynamic> json) =>
      _$FeelingEntryFromJson(json);
}
