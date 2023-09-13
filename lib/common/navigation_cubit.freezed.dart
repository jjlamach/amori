// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) favorites,
    required TResult Function(int index) home,
    required TResult Function(int index) feelings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? favorites,
    TResult? Function(int index)? home,
    TResult? Function(int index)? feelings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? favorites,
    TResult Function(int index)? home,
    TResult Function(int index)? feelings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Favorites value) favorites,
    required TResult Function(_Home value) home,
    required TResult Function(_Feelings value) feelings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Favorites value)? favorites,
    TResult? Function(_Home value)? home,
    TResult? Function(_Feelings value)? feelings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Favorites value)? favorites,
    TResult Function(_Home value)? home,
    TResult Function(_Feelings value)? feelings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoritesCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_FavoritesCopyWith(
          _$_Favorites value, $Res Function(_$_Favorites) then) =
      __$$_FavoritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_FavoritesCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_Favorites>
    implements _$$_FavoritesCopyWith<$Res> {
  __$$_FavoritesCopyWithImpl(
      _$_Favorites _value, $Res Function(_$_Favorites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_Favorites(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Favorites extends _Favorites {
  const _$_Favorites(this.index) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.favorites(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Favorites &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesCopyWith<_$_Favorites> get copyWith =>
      __$$_FavoritesCopyWithImpl<_$_Favorites>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) favorites,
    required TResult Function(int index) home,
    required TResult Function(int index) feelings,
  }) {
    return favorites(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? favorites,
    TResult? Function(int index)? home,
    TResult? Function(int index)? feelings,
  }) {
    return favorites?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? favorites,
    TResult Function(int index)? home,
    TResult Function(int index)? feelings,
    required TResult orElse(),
  }) {
    if (favorites != null) {
      return favorites(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Favorites value) favorites,
    required TResult Function(_Home value) home,
    required TResult Function(_Feelings value) feelings,
  }) {
    return favorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Favorites value)? favorites,
    TResult? Function(_Home value)? home,
    TResult? Function(_Feelings value)? feelings,
  }) {
    return favorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Favorites value)? favorites,
    TResult Function(_Home value)? home,
    TResult Function(_Feelings value)? feelings,
    required TResult orElse(),
  }) {
    if (favorites != null) {
      return favorites(this);
    }
    return orElse();
  }
}

abstract class _Favorites extends NavigationState {
  const factory _Favorites(final int index) = _$_Favorites;
  const _Favorites._() : super._();

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesCopyWith<_$_Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_HomeCopyWith(_$_Home value, $Res Function(_$_Home) then) =
      __$$_HomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_HomeCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_Home>
    implements _$$_HomeCopyWith<$Res> {
  __$$_HomeCopyWithImpl(_$_Home _value, $Res Function(_$_Home) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_Home(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Home extends _Home {
  const _$_Home(this.index) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.home(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Home &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeCopyWith<_$_Home> get copyWith =>
      __$$_HomeCopyWithImpl<_$_Home>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) favorites,
    required TResult Function(int index) home,
    required TResult Function(int index) feelings,
  }) {
    return home(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? favorites,
    TResult? Function(int index)? home,
    TResult? Function(int index)? feelings,
  }) {
    return home?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? favorites,
    TResult Function(int index)? home,
    TResult Function(int index)? feelings,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Favorites value) favorites,
    required TResult Function(_Home value) home,
    required TResult Function(_Feelings value) feelings,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Favorites value)? favorites,
    TResult? Function(_Home value)? home,
    TResult? Function(_Feelings value)? feelings,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Favorites value)? favorites,
    TResult Function(_Home value)? home,
    TResult Function(_Feelings value)? feelings,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class _Home extends NavigationState {
  const factory _Home(final int index) = _$_Home;
  const _Home._() : super._();

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_HomeCopyWith<_$_Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FeelingsCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_FeelingsCopyWith(
          _$_Feelings value, $Res Function(_$_Feelings) then) =
      __$$_FeelingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_FeelingsCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_Feelings>
    implements _$$_FeelingsCopyWith<$Res> {
  __$$_FeelingsCopyWithImpl(
      _$_Feelings _value, $Res Function(_$_Feelings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_Feelings(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Feelings extends _Feelings {
  const _$_Feelings(this.index) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.feelings(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feelings &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeelingsCopyWith<_$_Feelings> get copyWith =>
      __$$_FeelingsCopyWithImpl<_$_Feelings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) favorites,
    required TResult Function(int index) home,
    required TResult Function(int index) feelings,
  }) {
    return feelings(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? favorites,
    TResult? Function(int index)? home,
    TResult? Function(int index)? feelings,
  }) {
    return feelings?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? favorites,
    TResult Function(int index)? home,
    TResult Function(int index)? feelings,
    required TResult orElse(),
  }) {
    if (feelings != null) {
      return feelings(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Favorites value) favorites,
    required TResult Function(_Home value) home,
    required TResult Function(_Feelings value) feelings,
  }) {
    return feelings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Favorites value)? favorites,
    TResult? Function(_Home value)? home,
    TResult? Function(_Feelings value)? feelings,
  }) {
    return feelings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Favorites value)? favorites,
    TResult Function(_Home value)? home,
    TResult Function(_Feelings value)? feelings,
    required TResult orElse(),
  }) {
    if (feelings != null) {
      return feelings(this);
    }
    return orElse();
  }
}

abstract class _Feelings extends NavigationState {
  const factory _Feelings(final int index) = _$_Feelings;
  const _Feelings._() : super._();

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingsCopyWith<_$_Feelings> get copyWith =>
      throw _privateConstructorUsedError;
}
