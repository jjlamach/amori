// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String? get uuid => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  bool? get isAnonymous => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  DateTime? get creationTime => throw _privateConstructorUsedError;
  DateTime? get lastSignedIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String? uuid,
      String? email,
      String? photoURL,
      String? phoneNumber,
      bool? isAnonymous,
      String? displayName,
      DateTime? creationTime,
      DateTime? lastSignedIn});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? phoneNumber = freezed,
    Object? isAnonymous = freezed,
    Object? displayName = freezed,
    Object? creationTime = freezed,
    Object? lastSignedIn = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: freezed == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      creationTime: freezed == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastSignedIn: freezed == lastSignedIn
          ? _value.lastSignedIn
          : lastSignedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$_AppUserCopyWith(
          _$_AppUser value, $Res Function(_$_AppUser) then) =
      __$$_AppUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? email,
      String? photoURL,
      String? phoneNumber,
      bool? isAnonymous,
      String? displayName,
      DateTime? creationTime,
      DateTime? lastSignedIn});
}

/// @nodoc
class __$$_AppUserCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$_AppUser>
    implements _$$_AppUserCopyWith<$Res> {
  __$$_AppUserCopyWithImpl(_$_AppUser _value, $Res Function(_$_AppUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? phoneNumber = freezed,
    Object? isAnonymous = freezed,
    Object? displayName = freezed,
    Object? creationTime = freezed,
    Object? lastSignedIn = freezed,
  }) {
    return _then(_$_AppUser(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: freezed == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      creationTime: freezed == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastSignedIn: freezed == lastSignedIn
          ? _value.lastSignedIn
          : lastSignedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {this.uuid,
      this.email,
      this.photoURL,
      this.phoneNumber,
      this.isAnonymous,
      this.displayName,
      this.creationTime,
      this.lastSignedIn});

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserFromJson(json);

  @override
  final String? uuid;
  @override
  final String? email;
  @override
  final String? photoURL;
  @override
  final String? phoneNumber;
  @override
  final bool? isAnonymous;
  @override
  final String? displayName;
  @override
  final DateTime? creationTime;
  @override
  final DateTime? lastSignedIn;

  @override
  String toString() {
    return 'AppUser(uuid: $uuid, email: $email, photoURL: $photoURL, phoneNumber: $phoneNumber, isAnonymous: $isAnonymous, displayName: $displayName, creationTime: $creationTime, lastSignedIn: $lastSignedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.lastSignedIn, lastSignedIn) ||
                other.lastSignedIn == lastSignedIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, email, photoURL,
      phoneNumber, isAnonymous, displayName, creationTime, lastSignedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {final String? uuid,
      final String? email,
      final String? photoURL,
      final String? phoneNumber,
      final bool? isAnonymous,
      final String? displayName,
      final DateTime? creationTime,
      final DateTime? lastSignedIn}) = _$_AppUser;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  String? get uuid;
  @override
  String? get email;
  @override
  String? get photoURL;
  @override
  String? get phoneNumber;
  @override
  bool? get isAnonymous;
  @override
  String? get displayName;
  @override
  DateTime? get creationTime;
  @override
  DateTime? get lastSignedIn;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
