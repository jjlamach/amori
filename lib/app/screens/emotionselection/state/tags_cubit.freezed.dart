// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TagState {
  String get tagName => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagName, bool selected) personal,
    required TResult Function(String tagName, bool selected) work,
    required TResult Function(String tagName, bool selected) family,
    required TResult Function(String tagName, bool selected) relationships,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tagName, bool selected)? personal,
    TResult? Function(String tagName, bool selected)? work,
    TResult? Function(String tagName, bool selected)? family,
    TResult? Function(String tagName, bool selected)? relationships,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagName, bool selected)? personal,
    TResult Function(String tagName, bool selected)? work,
    TResult Function(String tagName, bool selected)? family,
    TResult Function(String tagName, bool selected)? relationships,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Personal value) personal,
    required TResult Function(_Work value) work,
    required TResult Function(_Family value) family,
    required TResult Function(_Relationships value) relationships,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Work value)? work,
    TResult? Function(_Family value)? family,
    TResult? Function(_Relationships value)? relationships,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Personal value)? personal,
    TResult Function(_Work value)? work,
    TResult Function(_Family value)? family,
    TResult Function(_Relationships value)? relationships,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagStateCopyWith<TagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagStateCopyWith<$Res> {
  factory $TagStateCopyWith(TagState value, $Res Function(TagState) then) =
      _$TagStateCopyWithImpl<$Res, TagState>;
  @useResult
  $Res call({String tagName, bool selected});
}

/// @nodoc
class _$TagStateCopyWithImpl<$Res, $Val extends TagState>
    implements $TagStateCopyWith<$Res> {
  _$TagStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagName = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalCopyWith<$Res> implements $TagStateCopyWith<$Res> {
  factory _$$_PersonalCopyWith(
          _$_Personal value, $Res Function(_$_Personal) then) =
      __$$_PersonalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tagName, bool selected});
}

/// @nodoc
class __$$_PersonalCopyWithImpl<$Res>
    extends _$TagStateCopyWithImpl<$Res, _$_Personal>
    implements _$$_PersonalCopyWith<$Res> {
  __$$_PersonalCopyWithImpl(
      _$_Personal _value, $Res Function(_$_Personal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagName = null,
    Object? selected = null,
  }) {
    return _then(_$_Personal(
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Personal implements _Personal {
  const _$_Personal({this.tagName = 'Personal', required this.selected});

  @override
  @JsonKey()
  final String tagName;
  @override
  final bool selected;

  @override
  String toString() {
    return 'TagState.personal(tagName: $tagName, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Personal &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagName, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalCopyWith<_$_Personal> get copyWith =>
      __$$_PersonalCopyWithImpl<_$_Personal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagName, bool selected) personal,
    required TResult Function(String tagName, bool selected) work,
    required TResult Function(String tagName, bool selected) family,
    required TResult Function(String tagName, bool selected) relationships,
  }) {
    return personal(tagName, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tagName, bool selected)? personal,
    TResult? Function(String tagName, bool selected)? work,
    TResult? Function(String tagName, bool selected)? family,
    TResult? Function(String tagName, bool selected)? relationships,
  }) {
    return personal?.call(tagName, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagName, bool selected)? personal,
    TResult Function(String tagName, bool selected)? work,
    TResult Function(String tagName, bool selected)? family,
    TResult Function(String tagName, bool selected)? relationships,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(tagName, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Personal value) personal,
    required TResult Function(_Work value) work,
    required TResult Function(_Family value) family,
    required TResult Function(_Relationships value) relationships,
  }) {
    return personal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Work value)? work,
    TResult? Function(_Family value)? family,
    TResult? Function(_Relationships value)? relationships,
  }) {
    return personal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Personal value)? personal,
    TResult Function(_Work value)? work,
    TResult Function(_Family value)? family,
    TResult Function(_Relationships value)? relationships,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(this);
    }
    return orElse();
  }
}

abstract class _Personal implements TagState {
  const factory _Personal(
      {final String tagName, required final bool selected}) = _$_Personal;

  @override
  String get tagName;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalCopyWith<_$_Personal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkCopyWith<$Res> implements $TagStateCopyWith<$Res> {
  factory _$$_WorkCopyWith(_$_Work value, $Res Function(_$_Work) then) =
      __$$_WorkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tagName, bool selected});
}

/// @nodoc
class __$$_WorkCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res, _$_Work>
    implements _$$_WorkCopyWith<$Res> {
  __$$_WorkCopyWithImpl(_$_Work _value, $Res Function(_$_Work) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagName = null,
    Object? selected = null,
  }) {
    return _then(_$_Work(
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Work implements _Work {
  const _$_Work({this.tagName = 'Work', required this.selected});

  @override
  @JsonKey()
  final String tagName;
  @override
  final bool selected;

  @override
  String toString() {
    return 'TagState.work(tagName: $tagName, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Work &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagName, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkCopyWith<_$_Work> get copyWith =>
      __$$_WorkCopyWithImpl<_$_Work>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagName, bool selected) personal,
    required TResult Function(String tagName, bool selected) work,
    required TResult Function(String tagName, bool selected) family,
    required TResult Function(String tagName, bool selected) relationships,
  }) {
    return work(tagName, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tagName, bool selected)? personal,
    TResult? Function(String tagName, bool selected)? work,
    TResult? Function(String tagName, bool selected)? family,
    TResult? Function(String tagName, bool selected)? relationships,
  }) {
    return work?.call(tagName, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagName, bool selected)? personal,
    TResult Function(String tagName, bool selected)? work,
    TResult Function(String tagName, bool selected)? family,
    TResult Function(String tagName, bool selected)? relationships,
    required TResult orElse(),
  }) {
    if (work != null) {
      return work(tagName, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Personal value) personal,
    required TResult Function(_Work value) work,
    required TResult Function(_Family value) family,
    required TResult Function(_Relationships value) relationships,
  }) {
    return work(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Work value)? work,
    TResult? Function(_Family value)? family,
    TResult? Function(_Relationships value)? relationships,
  }) {
    return work?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Personal value)? personal,
    TResult Function(_Work value)? work,
    TResult Function(_Family value)? family,
    TResult Function(_Relationships value)? relationships,
    required TResult orElse(),
  }) {
    if (work != null) {
      return work(this);
    }
    return orElse();
  }
}

abstract class _Work implements TagState {
  const factory _Work({final String tagName, required final bool selected}) =
      _$_Work;

  @override
  String get tagName;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_WorkCopyWith<_$_Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FamilyCopyWith<$Res> implements $TagStateCopyWith<$Res> {
  factory _$$_FamilyCopyWith(_$_Family value, $Res Function(_$_Family) then) =
      __$$_FamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tagName, bool selected});
}

/// @nodoc
class __$$_FamilyCopyWithImpl<$Res>
    extends _$TagStateCopyWithImpl<$Res, _$_Family>
    implements _$$_FamilyCopyWith<$Res> {
  __$$_FamilyCopyWithImpl(_$_Family _value, $Res Function(_$_Family) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagName = null,
    Object? selected = null,
  }) {
    return _then(_$_Family(
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Family implements _Family {
  const _$_Family({this.tagName = 'Family', required this.selected});

  @override
  @JsonKey()
  final String tagName;
  @override
  final bool selected;

  @override
  String toString() {
    return 'TagState.family(tagName: $tagName, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Family &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagName, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FamilyCopyWith<_$_Family> get copyWith =>
      __$$_FamilyCopyWithImpl<_$_Family>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagName, bool selected) personal,
    required TResult Function(String tagName, bool selected) work,
    required TResult Function(String tagName, bool selected) family,
    required TResult Function(String tagName, bool selected) relationships,
  }) {
    return family(tagName, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tagName, bool selected)? personal,
    TResult? Function(String tagName, bool selected)? work,
    TResult? Function(String tagName, bool selected)? family,
    TResult? Function(String tagName, bool selected)? relationships,
  }) {
    return family?.call(tagName, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagName, bool selected)? personal,
    TResult Function(String tagName, bool selected)? work,
    TResult Function(String tagName, bool selected)? family,
    TResult Function(String tagName, bool selected)? relationships,
    required TResult orElse(),
  }) {
    if (family != null) {
      return family(tagName, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Personal value) personal,
    required TResult Function(_Work value) work,
    required TResult Function(_Family value) family,
    required TResult Function(_Relationships value) relationships,
  }) {
    return family(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Work value)? work,
    TResult? Function(_Family value)? family,
    TResult? Function(_Relationships value)? relationships,
  }) {
    return family?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Personal value)? personal,
    TResult Function(_Work value)? work,
    TResult Function(_Family value)? family,
    TResult Function(_Relationships value)? relationships,
    required TResult orElse(),
  }) {
    if (family != null) {
      return family(this);
    }
    return orElse();
  }
}

abstract class _Family implements TagState {
  const factory _Family({final String tagName, required final bool selected}) =
      _$_Family;

  @override
  String get tagName;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyCopyWith<_$_Family> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RelationshipsCopyWith<$Res>
    implements $TagStateCopyWith<$Res> {
  factory _$$_RelationshipsCopyWith(
          _$_Relationships value, $Res Function(_$_Relationships) then) =
      __$$_RelationshipsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tagName, bool selected});
}

/// @nodoc
class __$$_RelationshipsCopyWithImpl<$Res>
    extends _$TagStateCopyWithImpl<$Res, _$_Relationships>
    implements _$$_RelationshipsCopyWith<$Res> {
  __$$_RelationshipsCopyWithImpl(
      _$_Relationships _value, $Res Function(_$_Relationships) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagName = null,
    Object? selected = null,
  }) {
    return _then(_$_Relationships(
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Relationships implements _Relationships {
  const _$_Relationships(
      {this.tagName = 'Relationships', required this.selected});

  @override
  @JsonKey()
  final String tagName;
  @override
  final bool selected;

  @override
  String toString() {
    return 'TagState.relationships(tagName: $tagName, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Relationships &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagName, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelationshipsCopyWith<_$_Relationships> get copyWith =>
      __$$_RelationshipsCopyWithImpl<_$_Relationships>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagName, bool selected) personal,
    required TResult Function(String tagName, bool selected) work,
    required TResult Function(String tagName, bool selected) family,
    required TResult Function(String tagName, bool selected) relationships,
  }) {
    return relationships(tagName, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tagName, bool selected)? personal,
    TResult? Function(String tagName, bool selected)? work,
    TResult? Function(String tagName, bool selected)? family,
    TResult? Function(String tagName, bool selected)? relationships,
  }) {
    return relationships?.call(tagName, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagName, bool selected)? personal,
    TResult Function(String tagName, bool selected)? work,
    TResult Function(String tagName, bool selected)? family,
    TResult Function(String tagName, bool selected)? relationships,
    required TResult orElse(),
  }) {
    if (relationships != null) {
      return relationships(tagName, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Personal value) personal,
    required TResult Function(_Work value) work,
    required TResult Function(_Family value) family,
    required TResult Function(_Relationships value) relationships,
  }) {
    return relationships(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Work value)? work,
    TResult? Function(_Family value)? family,
    TResult? Function(_Relationships value)? relationships,
  }) {
    return relationships?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Personal value)? personal,
    TResult Function(_Work value)? work,
    TResult Function(_Family value)? family,
    TResult Function(_Relationships value)? relationships,
    required TResult orElse(),
  }) {
    if (relationships != null) {
      return relationships(this);
    }
    return orElse();
  }
}

abstract class _Relationships implements TagState {
  const factory _Relationships(
      {final String tagName, required final bool selected}) = _$_Relationships;

  @override
  String get tagName;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_RelationshipsCopyWith<_$_Relationships> get copyWith =>
      throw _privateConstructorUsedError;
}
