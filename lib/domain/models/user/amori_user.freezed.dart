// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amori_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AmoriUser _$AmoriUserFromJson(Map<String, dynamic> json) {
  return _AmoriUser.fromJson(json);
}

/// @nodoc
mixin _$AmoriUser {
  String? get uid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmoriUserCopyWith<AmoriUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmoriUserCopyWith<$Res> {
  factory $AmoriUserCopyWith(AmoriUser value, $Res Function(AmoriUser) then) =
      _$AmoriUserCopyWithImpl<$Res, AmoriUser>;
  @useResult
  $Res call(
      {String? uid, String? displayName, String? email, String? password});
}

/// @nodoc
class _$AmoriUserCopyWithImpl<$Res, $Val extends AmoriUser>
    implements $AmoriUserCopyWith<$Res> {
  _$AmoriUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AmoriUserCopyWith<$Res> implements $AmoriUserCopyWith<$Res> {
  factory _$$_AmoriUserCopyWith(
          _$_AmoriUser value, $Res Function(_$_AmoriUser) then) =
      __$$_AmoriUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid, String? displayName, String? email, String? password});
}

/// @nodoc
class __$$_AmoriUserCopyWithImpl<$Res>
    extends _$AmoriUserCopyWithImpl<$Res, _$_AmoriUser>
    implements _$$_AmoriUserCopyWith<$Res> {
  __$$_AmoriUserCopyWithImpl(
      _$_AmoriUser _value, $Res Function(_$_AmoriUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AmoriUser(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AmoriUser implements _AmoriUser {
  const _$_AmoriUser(
      {this.uid = '',
      this.displayName = '',
      this.email = '',
      this.password = ''});

  factory _$_AmoriUser.fromJson(Map<String, dynamic> json) =>
      _$$_AmoriUserFromJson(json);

  @override
  @JsonKey()
  final String? uid;
  @override
  @JsonKey()
  final String? displayName;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? password;

  @override
  String toString() {
    return 'AmoriUser(uid: $uid, displayName: $displayName, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmoriUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, displayName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmoriUserCopyWith<_$_AmoriUser> get copyWith =>
      __$$_AmoriUserCopyWithImpl<_$_AmoriUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmoriUserToJson(
      this,
    );
  }
}

abstract class _AmoriUser implements AmoriUser {
  const factory _AmoriUser(
      {final String? uid,
      final String? displayName,
      final String? email,
      final String? password}) = _$_AmoriUser;

  factory _AmoriUser.fromJson(Map<String, dynamic> json) =
      _$_AmoriUser.fromJson;

  @override
  String? get uid;
  @override
  String? get displayName;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_AmoriUserCopyWith<_$_AmoriUser> get copyWith =>
      throw _privateConstructorUsedError;
}
