// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotion_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmotionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editingEmotion,
    required TResult Function() editingDone,
    required TResult Function(String emotion) emotionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editingEmotion,
    TResult? Function()? editingDone,
    TResult? Function(String emotion)? emotionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editingEmotion,
    TResult Function()? editingDone,
    TResult Function(String emotion)? emotionSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editingEmotion,
    required TResult Function(_Done value) editingDone,
    required TResult Function(_Selected value) emotionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editingEmotion,
    TResult? Function(_Done value)? editingDone,
    TResult? Function(_Selected value)? emotionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editingEmotion,
    TResult Function(_Done value)? editingDone,
    TResult Function(_Selected value)? emotionSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionStateCopyWith<$Res> {
  factory $EmotionStateCopyWith(
          EmotionState value, $Res Function(EmotionState) then) =
      _$EmotionStateCopyWithImpl<$Res, EmotionState>;
}

/// @nodoc
class _$EmotionStateCopyWithImpl<$Res, $Val extends EmotionState>
    implements $EmotionStateCopyWith<$Res> {
  _$EmotionStateCopyWithImpl(this._value, this._then);

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
    extends _$EmotionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EmotionState.initial()';
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
    required TResult Function() editingEmotion,
    required TResult Function() editingDone,
    required TResult Function(String emotion) emotionSelected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editingEmotion,
    TResult? Function()? editingDone,
    TResult? Function(String emotion)? emotionSelected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editingEmotion,
    TResult Function()? editingDone,
    TResult Function(String emotion)? emotionSelected,
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
    required TResult Function(_Editing value) editingEmotion,
    required TResult Function(_Done value) editingDone,
    required TResult Function(_Selected value) emotionSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editingEmotion,
    TResult? Function(_Done value)? editingDone,
    TResult? Function(_Selected value)? emotionSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editingEmotion,
    TResult Function(_Done value)? editingDone,
    TResult Function(_Selected value)? emotionSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmotionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_EditingCopyWith<$Res> {
  factory _$$_EditingCopyWith(
          _$_Editing value, $Res Function(_$_Editing) then) =
      __$$_EditingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditingCopyWithImpl<$Res>
    extends _$EmotionStateCopyWithImpl<$Res, _$_Editing>
    implements _$$_EditingCopyWith<$Res> {
  __$$_EditingCopyWithImpl(_$_Editing _value, $Res Function(_$_Editing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Editing implements _Editing {
  const _$_Editing();

  @override
  String toString() {
    return 'EmotionState.editingEmotion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Editing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editingEmotion,
    required TResult Function() editingDone,
    required TResult Function(String emotion) emotionSelected,
  }) {
    return editingEmotion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editingEmotion,
    TResult? Function()? editingDone,
    TResult? Function(String emotion)? emotionSelected,
  }) {
    return editingEmotion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editingEmotion,
    TResult Function()? editingDone,
    TResult Function(String emotion)? emotionSelected,
    required TResult orElse(),
  }) {
    if (editingEmotion != null) {
      return editingEmotion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editingEmotion,
    required TResult Function(_Done value) editingDone,
    required TResult Function(_Selected value) emotionSelected,
  }) {
    return editingEmotion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editingEmotion,
    TResult? Function(_Done value)? editingDone,
    TResult? Function(_Selected value)? emotionSelected,
  }) {
    return editingEmotion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editingEmotion,
    TResult Function(_Done value)? editingDone,
    TResult Function(_Selected value)? emotionSelected,
    required TResult orElse(),
  }) {
    if (editingEmotion != null) {
      return editingEmotion(this);
    }
    return orElse();
  }
}

abstract class _Editing implements EmotionState {
  const factory _Editing() = _$_Editing;
}

/// @nodoc
abstract class _$$_DoneCopyWith<$Res> {
  factory _$$_DoneCopyWith(_$_Done value, $Res Function(_$_Done) then) =
      __$$_DoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DoneCopyWithImpl<$Res>
    extends _$EmotionStateCopyWithImpl<$Res, _$_Done>
    implements _$$_DoneCopyWith<$Res> {
  __$$_DoneCopyWithImpl(_$_Done _value, $Res Function(_$_Done) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Done implements _Done {
  const _$_Done();

  @override
  String toString() {
    return 'EmotionState.editingDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Done);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editingEmotion,
    required TResult Function() editingDone,
    required TResult Function(String emotion) emotionSelected,
  }) {
    return editingDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editingEmotion,
    TResult? Function()? editingDone,
    TResult? Function(String emotion)? emotionSelected,
  }) {
    return editingDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editingEmotion,
    TResult Function()? editingDone,
    TResult Function(String emotion)? emotionSelected,
    required TResult orElse(),
  }) {
    if (editingDone != null) {
      return editingDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editingEmotion,
    required TResult Function(_Done value) editingDone,
    required TResult Function(_Selected value) emotionSelected,
  }) {
    return editingDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editingEmotion,
    TResult? Function(_Done value)? editingDone,
    TResult? Function(_Selected value)? emotionSelected,
  }) {
    return editingDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editingEmotion,
    TResult Function(_Done value)? editingDone,
    TResult Function(_Selected value)? emotionSelected,
    required TResult orElse(),
  }) {
    if (editingDone != null) {
      return editingDone(this);
    }
    return orElse();
  }
}

abstract class _Done implements EmotionState {
  const factory _Done() = _$_Done;
}

/// @nodoc
abstract class _$$_SelectedCopyWith<$Res> {
  factory _$$_SelectedCopyWith(
          _$_Selected value, $Res Function(_$_Selected) then) =
      __$$_SelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emotion});
}

/// @nodoc
class __$$_SelectedCopyWithImpl<$Res>
    extends _$EmotionStateCopyWithImpl<$Res, _$_Selected>
    implements _$$_SelectedCopyWith<$Res> {
  __$$_SelectedCopyWithImpl(
      _$_Selected _value, $Res Function(_$_Selected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emotion = null,
  }) {
    return _then(_$_Selected(
      null == emotion
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Selected implements _Selected {
  const _$_Selected(this.emotion);

  @override
  final String emotion;

  @override
  String toString() {
    return 'EmotionState.emotionSelected(emotion: $emotion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Selected &&
            (identical(other.emotion, emotion) || other.emotion == emotion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emotion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      __$$_SelectedCopyWithImpl<_$_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editingEmotion,
    required TResult Function() editingDone,
    required TResult Function(String emotion) emotionSelected,
  }) {
    return emotionSelected(emotion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editingEmotion,
    TResult? Function()? editingDone,
    TResult? Function(String emotion)? emotionSelected,
  }) {
    return emotionSelected?.call(emotion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editingEmotion,
    TResult Function()? editingDone,
    TResult Function(String emotion)? emotionSelected,
    required TResult orElse(),
  }) {
    if (emotionSelected != null) {
      return emotionSelected(emotion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editingEmotion,
    required TResult Function(_Done value) editingDone,
    required TResult Function(_Selected value) emotionSelected,
  }) {
    return emotionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editingEmotion,
    TResult? Function(_Done value)? editingDone,
    TResult? Function(_Selected value)? emotionSelected,
  }) {
    return emotionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editingEmotion,
    TResult Function(_Done value)? editingDone,
    TResult Function(_Selected value)? emotionSelected,
    required TResult orElse(),
  }) {
    if (emotionSelected != null) {
      return emotionSelected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements EmotionState {
  const factory _Selected(final String emotion) = _$_Selected;

  String get emotion;
  @JsonKey(ignore: true)
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}
