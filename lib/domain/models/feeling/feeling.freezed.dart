// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feeling.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feeling _$FeelingFromJson(Map<String, dynamic> json) {
  return _Feeling.fromJson(json);
}

/// @nodoc
mixin _$Feeling {
  String get feeling => throw _privateConstructorUsedError;
  String get feelingDescription => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelingCopyWith<Feeling> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingCopyWith<$Res> {
  factory $FeelingCopyWith(Feeling value, $Res Function(Feeling) then) =
      _$FeelingCopyWithImpl<$Res, Feeling>;
  @useResult
  $Res call(
      {String feeling,
      String feelingDescription,
      bool isFavorite,
      DateTime? dateTime});
}

/// @nodoc
class _$FeelingCopyWithImpl<$Res, $Val extends Feeling>
    implements $FeelingCopyWith<$Res> {
  _$FeelingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = null,
    Object? feelingDescription = null,
    Object? isFavorite = null,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      feeling: null == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as String,
      feelingDescription: null == feelingDescription
          ? _value.feelingDescription
          : feelingDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeelingCopyWith<$Res> implements $FeelingCopyWith<$Res> {
  factory _$$_FeelingCopyWith(
          _$_Feeling value, $Res Function(_$_Feeling) then) =
      __$$_FeelingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String feeling,
      String feelingDescription,
      bool isFavorite,
      DateTime? dateTime});
}

/// @nodoc
class __$$_FeelingCopyWithImpl<$Res>
    extends _$FeelingCopyWithImpl<$Res, _$_Feeling>
    implements _$$_FeelingCopyWith<$Res> {
  __$$_FeelingCopyWithImpl(_$_Feeling _value, $Res Function(_$_Feeling) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = null,
    Object? feelingDescription = null,
    Object? isFavorite = null,
    Object? dateTime = freezed,
  }) {
    return _then(_$_Feeling(
      feeling: null == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as String,
      feelingDescription: null == feelingDescription
          ? _value.feelingDescription
          : feelingDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feeling extends _Feeling {
  _$_Feeling(
      {this.feeling = '',
      this.feelingDescription = '',
      this.isFavorite = false,
      this.dateTime})
      : super._();

  factory _$_Feeling.fromJson(Map<String, dynamic> json) =>
      _$$_FeelingFromJson(json);

  @override
  @JsonKey()
  final String feeling;
  @override
  @JsonKey()
  final String feelingDescription;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'Feeling(feeling: $feeling, feelingDescription: $feelingDescription, isFavorite: $isFavorite, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feeling &&
            (identical(other.feeling, feeling) || other.feeling == feeling) &&
            (identical(other.feelingDescription, feelingDescription) ||
                other.feelingDescription == feelingDescription) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, feeling, feelingDescription, isFavorite, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeelingCopyWith<_$_Feeling> get copyWith =>
      __$$_FeelingCopyWithImpl<_$_Feeling>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelingToJson(
      this,
    );
  }
}

abstract class _Feeling extends Feeling {
  factory _Feeling(
      {final String feeling,
      final String feelingDescription,
      final bool isFavorite,
      final DateTime? dateTime}) = _$_Feeling;
  _Feeling._() : super._();

  factory _Feeling.fromJson(Map<String, dynamic> json) = _$_Feeling.fromJson;

  @override
  String get feeling;
  @override
  String get feelingDescription;
  @override
  bool get isFavorite;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingCopyWith<_$_Feeling> get copyWith =>
      throw _privateConstructorUsedError;
}
