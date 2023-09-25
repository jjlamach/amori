// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeelingEntry _$$_FeelingEntryFromJson(Map<String, dynamic> json) =>
    _$_FeelingEntry(
      feeling: json['feeling'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_FeelingEntryToJson(_$_FeelingEntry instance) =>
    <String, dynamic>{
      'feeling': instance.feeling,
      'timestamp': instance.timestamp?.toIso8601String(),
    };
