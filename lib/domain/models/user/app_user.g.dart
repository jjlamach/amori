// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      uuid: json['uuid'] as String?,
      email: json['email'] as String?,
      photoURL: json['photoURL'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      isAnonymous: json['isAnonymous'] as bool?,
      displayName: json['displayName'] as String?,
      creationTime: json['creationTime'] == null
          ? null
          : DateTime.parse(json['creationTime'] as String),
      lastSignedIn: json['lastSignedIn'] == null
          ? null
          : DateTime.parse(json['lastSignedIn'] as String),
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'email': instance.email,
      'photoURL': instance.photoURL,
      'phoneNumber': instance.phoneNumber,
      'isAnonymous': instance.isAnonymous,
      'displayName': instance.displayName,
      'creationTime': instance.creationTime?.toIso8601String(),
      'lastSignedIn': instance.lastSignedIn?.toIso8601String(),
    };