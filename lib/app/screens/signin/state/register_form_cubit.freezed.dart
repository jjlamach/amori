// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterFormState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  TextEditingController get email => throw _privateConstructorUsedError;
  TextEditingController get password => throw _privateConstructorUsedError;
  TextEditingController get username => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GlobalKey<FormState> formKey,
            TextEditingController email,
            TextEditingController password,
            TextEditingController username)
        createdRegisterForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GlobalKey<FormState> formKey, TextEditingController email,
            TextEditingController password, TextEditingController username)?
        createdRegisterForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalKey<FormState> formKey, TextEditingController email,
            TextEditingController password, TextEditingController username)?
        createdRegisterForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterForm value) createdRegisterForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterForm value)? createdRegisterForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterForm value)? createdRegisterForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res, RegisterFormState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      TextEditingController email,
      TextEditingController password,
      TextEditingController username});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res, $Val extends RegisterFormState>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterFormCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$_RegisterFormCopyWith(
          _$_RegisterForm value, $Res Function(_$_RegisterForm) then) =
      __$$_RegisterFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      TextEditingController email,
      TextEditingController password,
      TextEditingController username});
}

/// @nodoc
class __$$_RegisterFormCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res, _$_RegisterForm>
    implements _$$_RegisterFormCopyWith<$Res> {
  __$$_RegisterFormCopyWithImpl(
      _$_RegisterForm _value, $Res Function(_$_RegisterForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$_RegisterForm(
      null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_RegisterForm implements _RegisterForm {
  const _$_RegisterForm(this.formKey, this.email, this.password, this.username);

  @override
  final GlobalKey<FormState> formKey;
  @override
  final TextEditingController email;
  @override
  final TextEditingController password;
  @override
  final TextEditingController username;

  @override
  String toString() {
    return 'RegisterFormState.createdRegisterForm(formKey: $formKey, email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterForm &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, formKey, email, password, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFormCopyWith<_$_RegisterForm> get copyWith =>
      __$$_RegisterFormCopyWithImpl<_$_RegisterForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GlobalKey<FormState> formKey,
            TextEditingController email,
            TextEditingController password,
            TextEditingController username)
        createdRegisterForm,
  }) {
    return createdRegisterForm(formKey, email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GlobalKey<FormState> formKey, TextEditingController email,
            TextEditingController password, TextEditingController username)?
        createdRegisterForm,
  }) {
    return createdRegisterForm?.call(formKey, email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalKey<FormState> formKey, TextEditingController email,
            TextEditingController password, TextEditingController username)?
        createdRegisterForm,
    required TResult orElse(),
  }) {
    if (createdRegisterForm != null) {
      return createdRegisterForm(formKey, email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterForm value) createdRegisterForm,
  }) {
    return createdRegisterForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterForm value)? createdRegisterForm,
  }) {
    return createdRegisterForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterForm value)? createdRegisterForm,
    required TResult orElse(),
  }) {
    if (createdRegisterForm != null) {
      return createdRegisterForm(this);
    }
    return orElse();
  }
}

abstract class _RegisterForm implements RegisterFormState {
  const factory _RegisterForm(
      final GlobalKey<FormState> formKey,
      final TextEditingController email,
      final TextEditingController password,
      final TextEditingController username) = _$_RegisterForm;

  @override
  GlobalKey<FormState> get formKey;
  @override
  TextEditingController get email;
  @override
  TextEditingController get password;
  @override
  TextEditingController get username;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormCopyWith<_$_RegisterForm> get copyWith =>
      throw _privateConstructorUsedError;
}
