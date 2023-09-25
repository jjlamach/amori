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

FeelingEntry _$FeelingEntryFromJson(Map<String, dynamic> json) {
  return _FeelingEntry.fromJson(json);
}

/// @nodoc
mixin _$FeelingEntry {
  String? get feeling => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelingEntryCopyWith<FeelingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingEntryCopyWith<$Res> {
  factory $FeelingEntryCopyWith(
          FeelingEntry value, $Res Function(FeelingEntry) then) =
      _$FeelingEntryCopyWithImpl<$Res, FeelingEntry>;
  @useResult
  $Res call({String? feeling, DateTime? timestamp});
}

/// @nodoc
class _$FeelingEntryCopyWithImpl<$Res, $Val extends FeelingEntry>
    implements $FeelingEntryCopyWith<$Res> {
  _$FeelingEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      feeling: freezed == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeelingEntryCopyWith<$Res>
    implements $FeelingEntryCopyWith<$Res> {
  factory _$$_FeelingEntryCopyWith(
          _$_FeelingEntry value, $Res Function(_$_FeelingEntry) then) =
      __$$_FeelingEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? feeling, DateTime? timestamp});
}

/// @nodoc
class __$$_FeelingEntryCopyWithImpl<$Res>
    extends _$FeelingEntryCopyWithImpl<$Res, _$_FeelingEntry>
    implements _$$_FeelingEntryCopyWith<$Res> {
  __$$_FeelingEntryCopyWithImpl(
      _$_FeelingEntry _value, $Res Function(_$_FeelingEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$_FeelingEntry(
      feeling: freezed == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelingEntry implements _FeelingEntry {
  const _$_FeelingEntry({this.feeling, this.timestamp});

  factory _$_FeelingEntry.fromJson(Map<String, dynamic> json) =>
      _$$_FeelingEntryFromJson(json);

  @override
  final String? feeling;
  @override
  final DateTime? timestamp;

  @override
  String toString() {
    return 'FeelingEntry(feeling: $feeling, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelingEntry &&
            (identical(other.feeling, feeling) || other.feeling == feeling) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feeling, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeelingEntryCopyWith<_$_FeelingEntry> get copyWith =>
      __$$_FeelingEntryCopyWithImpl<_$_FeelingEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelingEntryToJson(
      this,
    );
  }
}

abstract class _FeelingEntry implements FeelingEntry {
  const factory _FeelingEntry(
      {final String? feeling, final DateTime? timestamp}) = _$_FeelingEntry;

  factory _FeelingEntry.fromJson(Map<String, dynamic> json) =
      _$_FeelingEntry.fromJson;

  @override
  String? get feeling;
  @override
  DateTime? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingEntryCopyWith<_$_FeelingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
