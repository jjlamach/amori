// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser? user) registered,
    required TResult Function(AppUser? user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() deletedAccount,
    required TResult Function(String exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? registered,
    TResult? Function(AppUser? user)? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? deletedAccount,
    TResult? Function(String exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser? user)? registered,
    TResult Function(AppUser? user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? deletedAccount,
    TResult Function(String exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Deleted value) deletedAccount,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Deleted value)? deletedAccount,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Deleted value)? deletedAccount,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function() loading,
    required TResult Function(AppUser? user) registered,
    required TResult Function(AppUser? user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() deletedAccount,
    required TResult Function(String exception) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? registered,
    TResult? Function(AppUser? user)? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? deletedAccount,
    TResult? Function(String exception)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser? user)? registered,
    TResult Function(AppUser? user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? deletedAccount,
    TResult Function(String exception)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Deleted value) deletedAccount,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Deleted value)? deletedAccount,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Deleted value)? deletedAccount,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser? user) registered,
    required TResult Function(AppUser? user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() deletedAccount,
    required TResult Function(String exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? registered,
    TResult? Function(AppUser? user)? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? deletedAccount,
    TResult? Function(String exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser? user)? registered,
    TResult Function(AppUser? user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? deletedAccount,
    TResult Function(String exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Deleted value) deletedAccount,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Deleted value)? deletedAccount,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Deleted value)? deletedAccount,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_RegisteredCopyWith<$Res> {
  factory _$$_RegisteredCopyWith(
          _$_Registered value, $Res Function(_$_Registered) then) =
      __$$_RegisteredCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_RegisteredCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Registered>
    implements _$$_RegisteredCopyWith<$Res> {
  __$$_RegisteredCopyWithImpl(
      _$_Registered _value, $Res Function(_$_Registered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_Registered(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Registered implements _Registered {
  const _$_Registered(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'AuthState.registered(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Registered &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisteredCopyWith<_$_Registered> get copyWith =>
      __$$_RegisteredCopyWithImpl<_$_Registered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser? user) registered,
    required TResult Function(AppUser? user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() deletedAccount,
    required TResult Function(String exception) error,
  }) {
    return registered(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? registered,
    TResult? Function(AppUser? user)? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? deletedAccount,
    TResult? Function(String exception)? error,
  }) {
    return registered?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser? user)? registered,
    TResult Function(AppUser? user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? deletedAccount,
    TResult Function(String exception)? error,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Deleted value) deletedAccount,
    required TResult Function(_Error value) error,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Deleted value)? deletedAccount,
    TResult? Function(_Error value)? error,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Deleted value)? deletedAccount,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements AuthState {
  const factory _Registered(final AppUser? user) = _$_Registered;

  AppUser? get user;
  @JsonKey(ignore: true)
  _$$_RegisteredCopyWith<_$_Registered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoggedInCopyWith<$Res> {
  factory _$$_LoggedInCopyWith(
          _$_LoggedIn value, $Res Function(_$_LoggedIn) then) =
      __$$_LoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LoggedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoggedIn>
    implements _$$_LoggedInCopyWith<$Res> {
  __$$_LoggedInCopyWithImpl(
      _$_LoggedIn _value, $Res Function(_$_LoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_LoggedIn(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_LoggedIn implements _LoggedIn {
  const _$_LoggedIn(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'AuthState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
      __$$_LoggedInCopyWithImpl<_$_LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser? user) registered,
    required TResult Function(AppUser? user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() deletedAccount,
    required TResult Function(String exception) error,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? registered,
    TResult? Function(AppUser? user)? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? deletedAccount,
    TResult? Function(String exception)? error,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser? user)? registered,
    TResult Function(AppUser? user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? deletedAccount,
    TResult Function(String exception)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Deleted value) deletedAccount,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Deleted value)? deletedAccount,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Deleted value)? deletedAccount,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthState {
  const factory _LoggedIn(final AppUser? user) = _$_LoggedIn;

  AppUser? get user;
  @JsonKey(ignore: true)
  _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoggedOutCopyWith<$Res> {
  factory _$$_LoggedOutCopyWith(
          _$_LoggedOut value, $Res Function(_$_LoggedOut) then) =
      __$$_LoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoggedOutCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoggedOut>
    implements _$$_LoggedOutCopyWith<$Res> {
  __$$_LoggedOutCopyWithImpl(
      _$_LoggedOut _value, $Res Function(_$_LoggedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoggedOut implements _LoggedOut {
  const _$_LoggedOut();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser? user) registered,
    required TResult Function(AppUser? user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() deletedAccount,
    required TResult Function(String exception) error,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? registered,
    TResult? Function(AppUser? user)? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? deletedAccount,
    TResult? Function(String exception)? error,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser? user)? registered,
    TResult Function(AppUser? user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? deletedAccount,
    TResult Function(String exception)? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Deleted value) deletedAccount,
    required TResult Function(_Error value) error,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Deleted value)? deletedAccount,
    TResult? Function(_Error value)? error,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Deleted value)? deletedAccount,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthState {
  const factory _LoggedOut() = _$_LoggedOut;
}

/// @nodoc
abstract class _$$_DeletedCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Deleted>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted();

  @override
  String toString() {
    return 'AuthState.deletedAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Deleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser? user) registered,
    required TResult Function(AppUser? user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() deletedAccount,
    required TResult Function(String exception) error,
  }) {
    return deletedAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? registered,
    TResult? Function(AppUser? user)? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? deletedAccount,
    TResult? Function(String exception)? error,
  }) {
    return deletedAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser? user)? registered,
    TResult Function(AppUser? user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? deletedAccount,
    TResult Function(String exception)? error,
    required TResult orElse(),
  }) {
    if (deletedAccount != null) {
      return deletedAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Deleted value) deletedAccount,
    required TResult Function(_Error value) error,
  }) {
    return deletedAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Deleted value)? deletedAccount,
    TResult? Function(_Error value)? error,
  }) {
    return deletedAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Deleted value)? deletedAccount,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deletedAccount != null) {
      return deletedAccount(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements AuthState {
  const factory _Deleted() = _$_Deleted;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$_Error(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.exception);

  @override
  final String exception;

  @override
  String toString() {
    return 'AuthState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser? user) registered,
    required TResult Function(AppUser? user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() deletedAccount,
    required TResult Function(String exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser? user)? registered,
    TResult? Function(AppUser? user)? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? deletedAccount,
    TResult? Function(String exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser? user)? registered,
    TResult Function(AppUser? user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? deletedAccount,
    TResult Function(String exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Deleted value) deletedAccount,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Deleted value)? deletedAccount,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Deleted value)? deletedAccount,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String exception) = _$_Error;

  String get exception;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String username});
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$_Register(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(this.email, this.password, this.username);

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthEvent.register(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function() delete,
  }) {
    return register(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function()? delete,
  }) {
    return register?.call(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Delete value) delete,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Delete value)? delete,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
          final String email, final String password, final String username) =
      _$_Register;

  String get email;
  String get password;
  String get username;
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogInCopyWith<$Res> {
  factory _$$_LogInCopyWith(_$_LogIn value, $Res Function(_$_LogIn) then) =
      __$$_LogInCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LogInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogIn>
    implements _$$_LogInCopyWith<$Res> {
  __$$_LogInCopyWithImpl(_$_LogIn _value, $Res Function(_$_LogIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LogIn(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogIn implements _LogIn {
  const _$_LogIn(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInCopyWith<_$_LogIn> get copyWith =>
      __$$_LogInCopyWithImpl<_$_LogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function() delete,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function()? delete,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Delete value) delete,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Delete value)? delete,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogIn implements AuthEvent {
  const factory _LogIn(final String email, final String password) = _$_LogIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LogInCopyWith<_$_LogIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogOutCopyWith<$Res> {
  factory _$$_LogOutCopyWith(_$_LogOut value, $Res Function(_$_LogOut) then) =
      __$$_LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogOut>
    implements _$$_LogOutCopyWith<$Res> {
  __$$_LogOutCopyWithImpl(_$_LogOut _value, $Res Function(_$_LogOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogOut implements _LogOut {
  const _$_LogOut();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function() delete,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function()? delete,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Delete value) delete,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Delete value)? delete,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$_LogOut;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete();

  @override
  String toString() {
    return 'AuthEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AuthEvent {
  const factory _Delete() = _$_Delete;
}
