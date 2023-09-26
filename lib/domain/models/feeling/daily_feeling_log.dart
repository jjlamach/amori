import 'package:amori/domain/models/feeling/feeling_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_feeling_log.freezed.dart';
part 'daily_feeling_log.g.dart';

@freezed
class DailyFeelingLog with _$DailyFeelingLog {
  const factory DailyFeelingLog({
    Map<String, FeelingEntry>? records,
  }) = _DailyFeelingLog;

  factory DailyFeelingLog.fromJson(Map<String, dynamic> json) =>
      _$DailyFeelingLogFromJson(json);
}
