// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_feeling_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyFeelingLog _$DailyFeelingLogFromJson(Map<String, dynamic> json) {
  return _DailyFeelingLog.fromJson(json);
}

/// @nodoc
mixin _$DailyFeelingLog {
  Map<String, FeelingEntry>? get records => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyFeelingLogCopyWith<DailyFeelingLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyFeelingLogCopyWith<$Res> {
  factory $DailyFeelingLogCopyWith(
          DailyFeelingLog value, $Res Function(DailyFeelingLog) then) =
      _$DailyFeelingLogCopyWithImpl<$Res, DailyFeelingLog>;
  @useResult
  $Res call({Map<String, FeelingEntry>? records});
}

/// @nodoc
class _$DailyFeelingLogCopyWithImpl<$Res, $Val extends DailyFeelingLog>
    implements $DailyFeelingLogCopyWith<$Res> {
  _$DailyFeelingLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as Map<String, FeelingEntry>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DailyFeelingLogCopyWith<$Res>
    implements $DailyFeelingLogCopyWith<$Res> {
  factory _$$_DailyFeelingLogCopyWith(
          _$_DailyFeelingLog value, $Res Function(_$_DailyFeelingLog) then) =
      __$$_DailyFeelingLogCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, FeelingEntry>? records});
}

/// @nodoc
class __$$_DailyFeelingLogCopyWithImpl<$Res>
    extends _$DailyFeelingLogCopyWithImpl<$Res, _$_DailyFeelingLog>
    implements _$$_DailyFeelingLogCopyWith<$Res> {
  __$$_DailyFeelingLogCopyWithImpl(
      _$_DailyFeelingLog _value, $Res Function(_$_DailyFeelingLog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_$_DailyFeelingLog(
      records: freezed == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as Map<String, FeelingEntry>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyFeelingLog implements _DailyFeelingLog {
  const _$_DailyFeelingLog({final Map<String, FeelingEntry>? records})
      : _records = records;

  factory _$_DailyFeelingLog.fromJson(Map<String, dynamic> json) =>
      _$$_DailyFeelingLogFromJson(json);

  final Map<String, FeelingEntry>? _records;
  @override
  Map<String, FeelingEntry>? get records {
    final value = _records;
    if (value == null) return null;
    if (_records is EqualUnmodifiableMapView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DailyFeelingLog(records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyFeelingLog &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyFeelingLogCopyWith<_$_DailyFeelingLog> get copyWith =>
      __$$_DailyFeelingLogCopyWithImpl<_$_DailyFeelingLog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyFeelingLogToJson(
      this,
    );
  }
}

abstract class _DailyFeelingLog implements DailyFeelingLog {
  const factory _DailyFeelingLog({final Map<String, FeelingEntry>? records}) =
      _$_DailyFeelingLog;

  factory _DailyFeelingLog.fromJson(Map<String, dynamic> json) =
      _$_DailyFeelingLog.fromJson;

  @override
  Map<String, FeelingEntry>? get records;
  @override
  @JsonKey(ignore: true)
  _$$_DailyFeelingLogCopyWith<_$_DailyFeelingLog> get copyWith =>
      throw _privateConstructorUsedError;
}
