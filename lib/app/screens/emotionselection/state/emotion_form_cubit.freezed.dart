// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotion_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmotionFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Feeling feeling) emotionForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Feeling feeling)? emotionForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Feeling feeling)? emotionForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmotionForm value) emotionForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmotionForm value)? emotionForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmotionForm value)? emotionForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionFormStateCopyWith<$Res> {
  factory $EmotionFormStateCopyWith(
          EmotionFormState value, $Res Function(EmotionFormState) then) =
      _$EmotionFormStateCopyWithImpl<$Res, EmotionFormState>;
}

/// @nodoc
class _$EmotionFormStateCopyWithImpl<$Res, $Val extends EmotionFormState>
    implements $EmotionFormStateCopyWith<$Res> {
  _$EmotionFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EmotionFormStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EmotionFormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Feeling feeling) emotionForm,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Feeling feeling)? emotionForm,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Feeling feeling)? emotionForm,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmotionForm value) emotionForm,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmotionForm value)? emotionForm,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmotionForm value)? emotionForm,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmotionFormState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_EmotionFormCopyWith<$Res> {
  factory _$$_EmotionFormCopyWith(
          _$_EmotionForm value, $Res Function(_$_EmotionForm) then) =
      __$$_EmotionFormCopyWithImpl<$Res>;
  @useResult
  $Res call({Feeling feeling});

  $FeelingCopyWith<$Res> get feeling;
}

/// @nodoc
class __$$_EmotionFormCopyWithImpl<$Res>
    extends _$EmotionFormStateCopyWithImpl<$Res, _$_EmotionForm>
    implements _$$_EmotionFormCopyWith<$Res> {
  __$$_EmotionFormCopyWithImpl(
      _$_EmotionForm _value, $Res Function(_$_EmotionForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = null,
  }) {
    return _then(_$_EmotionForm(
      null == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as Feeling,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FeelingCopyWith<$Res> get feeling {
    return $FeelingCopyWith<$Res>(_value.feeling, (value) {
      return _then(_value.copyWith(feeling: value));
    });
  }
}

/// @nodoc

class _$_EmotionForm implements _EmotionForm {
  const _$_EmotionForm(this.feeling);

  @override
  final Feeling feeling;

  @override
  String toString() {
    return 'EmotionFormState.emotionForm(feeling: $feeling)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmotionForm &&
            (identical(other.feeling, feeling) || other.feeling == feeling));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feeling);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmotionFormCopyWith<_$_EmotionForm> get copyWith =>
      __$$_EmotionFormCopyWithImpl<_$_EmotionForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Feeling feeling) emotionForm,
  }) {
    return emotionForm(feeling);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Feeling feeling)? emotionForm,
  }) {
    return emotionForm?.call(feeling);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Feeling feeling)? emotionForm,
    required TResult orElse(),
  }) {
    if (emotionForm != null) {
      return emotionForm(feeling);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmotionForm value) emotionForm,
  }) {
    return emotionForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmotionForm value)? emotionForm,
  }) {
    return emotionForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmotionForm value)? emotionForm,
    required TResult orElse(),
  }) {
    if (emotionForm != null) {
      return emotionForm(this);
    }
    return orElse();
  }
}

abstract class _EmotionForm implements EmotionFormState {
  const factory _EmotionForm(final Feeling feeling) = _$_EmotionForm;

  Feeling get feeling;
  @JsonKey(ignore: true)
  _$$_EmotionFormCopyWith<_$_EmotionForm> get copyWith =>
      throw _privateConstructorUsedError;
}
