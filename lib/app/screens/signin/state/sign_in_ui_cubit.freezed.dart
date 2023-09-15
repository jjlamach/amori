// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_ui_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInUIState {
  TextEditingController get email => throw _privateConstructorUsedError;
  TextEditingController get password => throw _privateConstructorUsedError;
  GlobalKey<FormState> get key => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)
        signIn,
    required TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        signIn,
    TResult? Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        signIn,
    TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInUIStateCopyWith<SignInUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInUIStateCopyWith<$Res> {
  factory $SignInUIStateCopyWith(
          SignInUIState value, $Res Function(SignInUIState) then) =
      _$SignInUIStateCopyWithImpl<$Res, SignInUIState>;
  @useResult
  $Res call(
      {TextEditingController email,
      TextEditingController password,
      GlobalKey<FormState> key});
}

/// @nodoc
class _$SignInUIStateCopyWithImpl<$Res, $Val extends SignInUIState>
    implements $SignInUIStateCopyWith<$Res> {
  _$SignInUIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res>
    implements $SignInUIStateCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController email,
      TextEditingController password,
      GlobalKey<FormState> key});
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res>
    extends _$SignInUIStateCopyWithImpl<$Res, _$_SignIn>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? key = null,
  }) {
    return _then(_$_SignIn(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$_SignIn extends _SignIn {
  const _$_SignIn(this.email, this.password, this.key) : super._();

  @override
  final TextEditingController email;
  @override
  final TextEditingController password;
  @override
  final GlobalKey<FormState> key;

  @override
  String toString() {
    return 'SignInUIState.signIn(email: $email, password: $password, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      __$$_SignInCopyWithImpl<_$_SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)
        signIn,
    required TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)
        register,
  }) {
    return signIn(email, password, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        signIn,
    TResult? Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        register,
  }) {
    return signIn?.call(email, password, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        signIn,
    TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        register,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn extends SignInUIState {
  const factory _SignIn(
      final TextEditingController email,
      final TextEditingController password,
      final GlobalKey<FormState> key) = _$_SignIn;
  const _SignIn._() : super._();

  @override
  TextEditingController get email;
  @override
  TextEditingController get password;
  @override
  GlobalKey<FormState> get key;
  @override
  @JsonKey(ignore: true)
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res>
    implements $SignInUIStateCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController email,
      TextEditingController password,
      GlobalKey<FormState> key});
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$SignInUIStateCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? key = null,
  }) {
    return _then(_$_Register(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$_Register extends _Register {
  const _$_Register(this.email, this.password, this.key) : super._();

  @override
  final TextEditingController email;
  @override
  final TextEditingController password;
  @override
  final GlobalKey<FormState> key;

  @override
  String toString() {
    return 'SignInUIState.register(email: $email, password: $password, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)
        signIn,
    required TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)
        register,
  }) {
    return register(email, password, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        signIn,
    TResult? Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        register,
  }) {
    return register?.call(email, password, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        signIn,
    TResult Function(TextEditingController email,
            TextEditingController password, GlobalKey<FormState> key)?
        register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register extends SignInUIState {
  const factory _Register(
      final TextEditingController email,
      final TextEditingController password,
      final GlobalKey<FormState> key) = _$_Register;
  const _Register._() : super._();

  @override
  TextEditingController get email;
  @override
  TextEditingController get password;
  @override
  GlobalKey<FormState> get key;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}
