// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  TextEditingController get email => throw _privateConstructorUsedError;
  TextEditingController get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GlobalKey<FormState> formKey,
            TextEditingController email, TextEditingController password)
        formCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GlobalKey<FormState> formKey, TextEditingController email,
            TextEditingController password)?
        formCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalKey<FormState> formKey, TextEditingController email,
            TextEditingController password)?
        formCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInFormCreated value) formCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInFormCreated value)? formCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInFormCreated value)? formCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      TextEditingController email,
      TextEditingController password});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormCreatedCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormCreatedCopyWith(_$_SignInFormCreated value,
          $Res Function(_$_SignInFormCreated) then) =
      __$$_SignInFormCreatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      TextEditingController email,
      TextEditingController password});
}

/// @nodoc
class __$$_SignInFormCreatedCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$_SignInFormCreated>
    implements _$$_SignInFormCreatedCopyWith<$Res> {
  __$$_SignInFormCreatedCopyWithImpl(
      _$_SignInFormCreated _value, $Res Function(_$_SignInFormCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignInFormCreated(
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
    ));
  }
}

/// @nodoc

class _$_SignInFormCreated implements _SignInFormCreated {
  const _$_SignInFormCreated(this.formKey, this.email, this.password);

  @override
  final GlobalKey<FormState> formKey;
  @override
  final TextEditingController email;
  @override
  final TextEditingController password;

  @override
  String toString() {
    return 'SignInFormState.formCreated(formKey: $formKey, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormCreated &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormCreatedCopyWith<_$_SignInFormCreated> get copyWith =>
      __$$_SignInFormCreatedCopyWithImpl<_$_SignInFormCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GlobalKey<FormState> formKey,
            TextEditingController email, TextEditingController password)
        formCreated,
  }) {
    return formCreated(formKey, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GlobalKey<FormState> formKey, TextEditingController email,
            TextEditingController password)?
        formCreated,
  }) {
    return formCreated?.call(formKey, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalKey<FormState> formKey, TextEditingController email,
            TextEditingController password)?
        formCreated,
    required TResult orElse(),
  }) {
    if (formCreated != null) {
      return formCreated(formKey, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInFormCreated value) formCreated,
  }) {
    return formCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInFormCreated value)? formCreated,
  }) {
    return formCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInFormCreated value)? formCreated,
    required TResult orElse(),
  }) {
    if (formCreated != null) {
      return formCreated(this);
    }
    return orElse();
  }
}

abstract class _SignInFormCreated implements SignInFormState {
  const factory _SignInFormCreated(
      final GlobalKey<FormState> formKey,
      final TextEditingController email,
      final TextEditingController password) = _$_SignInFormCreated;

  @override
  GlobalKey<FormState> get formKey;
  @override
  TextEditingController get email;
  @override
  TextEditingController get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormCreatedCopyWith<_$_SignInFormCreated> get copyWith =>
      throw _privateConstructorUsedError;
}
