// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amori_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AmoriUser _$$_AmoriUserFromJson(Map<String, dynamic> json) => _$_AmoriUser(
      uid: json['uid'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      feelings: (json['feelings'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                DateTime.parse(k), Feeling.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_AmoriUserToJson(_$_AmoriUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'email': instance.email,
      'password': instance.password,
      'feelings':
          instance.feelings?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };
