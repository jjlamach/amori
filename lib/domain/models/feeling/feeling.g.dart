// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feeling _$$_FeelingFromJson(Map<String, dynamic> json) => _$_Feeling(
      feeling: json['feeling'] as String? ?? '',
      feelingDescription: json['feelingDescription'] as String? ?? '',
      isFavorite: json['isFavorite'] as bool? ?? false,
      dateTime: json['dateTime'] as String? ?? '',
      tag: json['tag'] as String? ?? '',
    );

Map<String, dynamic> _$$_FeelingToJson(_$_Feeling instance) =>
    <String, dynamic>{
      'feeling': instance.feeling,
      'feelingDescription': instance.feelingDescription,
      'isFavorite': instance.isFavorite,
      'dateTime': instance.dateTime,
      'tag': instance.tag,
    };
