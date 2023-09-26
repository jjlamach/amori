// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeling_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeelingEntry _$$_FeelingEntryFromJson(Map<String, dynamic> json) =>
    _$_FeelingEntry(
      feeling: json['feeling'] as String?,
      recordedAt: json['recordedAt'] == null
          ? null
          : DateTime.parse(json['recordedAt'] as String),
    );

Map<String, dynamic> _$$_FeelingEntryToJson(_$_FeelingEntry instance) =>
    <String, dynamic>{
      'feeling': instance.feeling,
      'recordedAt': instance.recordedAt?.toIso8601String(),
    };
