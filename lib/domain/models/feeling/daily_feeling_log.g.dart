// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_feeling_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyFeelingLog _$$_DailyFeelingLogFromJson(Map<String, dynamic> json) =>
    _$_DailyFeelingLog(
      records: (json['records'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FeelingEntry.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_DailyFeelingLogToJson(_$_DailyFeelingLog instance) =>
    <String, dynamic>{
      'records': instance.records,
    };
