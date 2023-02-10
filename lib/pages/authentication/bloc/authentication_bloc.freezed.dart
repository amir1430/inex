// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() singUp,
    required TResult Function(String value) changeEmail,
    required TResult Function(bool hidePassword) changeShowPassword,
    required TResult Function(String value) changePassword,
    required TResult Function(bool isSignUp) changeIsSigUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? singUp,
    TResult? Function(String value)? changeEmail,
    TResult? Function(bool hidePassword)? changeShowPassword,
    TResult? Function(String value)? changePassword,
    TResult? Function(bool isSignUp)? changeIsSigUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? singUp,
    TResult Function(String value)? changeEmail,
    TResult Function(bool hidePassword)? changeShowPassword,
    TResult Function(String value)? changePassword,
    TResult Function(bool isSignUp)? changeIsSigUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SingUp value) singUp,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeShowPassword value) changeShowPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeIsSigUp value) changeIsSigUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SingUp value)? singUp,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeShowPassword value)? changeShowPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeIsSigUp value)? changeIsSigUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SingUp value)? singUp,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeShowPassword value)? changeShowPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeIsSigUp value)? changeIsSigUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'AuthenticationEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() singUp,
    required TResult Function(String value) changeEmail,
    required TResult Function(bool hidePassword) changeShowPassword,
    required TResult Function(String value) changePassword,
    required TResult Function(bool isSignUp) changeIsSigUp,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? singUp,
    TResult? Function(String value)? changeEmail,
    TResult? Function(bool hidePassword)? changeShowPassword,
    TResult? Function(String value)? changePassword,
    TResult? Function(bool isSignUp)? changeIsSigUp,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? singUp,
    TResult Function(String value)? changeEmail,
    TResult Function(bool hidePassword)? changeShowPassword,
    TResult Function(String value)? changePassword,
    TResult Function(bool isSignUp)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SingUp value) singUp,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeShowPassword value) changeShowPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeIsSigUp value) changeIsSigUp,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SingUp value)? singUp,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeShowPassword value)? changeShowPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeIsSigUp value)? changeIsSigUp,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SingUp value)? singUp,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeShowPassword value)? changeShowPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeIsSigUp value)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthenticationEvent {
  const factory _Login() = _$_Login;
}

/// @nodoc
abstract class _$$_SingUpCopyWith<$Res> {
  factory _$$_SingUpCopyWith(_$_SingUp value, $Res Function(_$_SingUp) then) =
      __$$_SingUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SingUpCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_SingUp>
    implements _$$_SingUpCopyWith<$Res> {
  __$$_SingUpCopyWithImpl(_$_SingUp _value, $Res Function(_$_SingUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SingUp implements _SingUp {
  const _$_SingUp();

  @override
  String toString() {
    return 'AuthenticationEvent.singUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SingUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() singUp,
    required TResult Function(String value) changeEmail,
    required TResult Function(bool hidePassword) changeShowPassword,
    required TResult Function(String value) changePassword,
    required TResult Function(bool isSignUp) changeIsSigUp,
  }) {
    return singUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? singUp,
    TResult? Function(String value)? changeEmail,
    TResult? Function(bool hidePassword)? changeShowPassword,
    TResult? Function(String value)? changePassword,
    TResult? Function(bool isSignUp)? changeIsSigUp,
  }) {
    return singUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? singUp,
    TResult Function(String value)? changeEmail,
    TResult Function(bool hidePassword)? changeShowPassword,
    TResult Function(String value)? changePassword,
    TResult Function(bool isSignUp)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (singUp != null) {
      return singUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SingUp value) singUp,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeShowPassword value) changeShowPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeIsSigUp value) changeIsSigUp,
  }) {
    return singUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SingUp value)? singUp,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeShowPassword value)? changeShowPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeIsSigUp value)? changeIsSigUp,
  }) {
    return singUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SingUp value)? singUp,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeShowPassword value)? changeShowPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeIsSigUp value)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (singUp != null) {
      return singUp(this);
    }
    return orElse();
  }
}

abstract class _SingUp implements AuthenticationEvent {
  const factory _SingUp() = _$_SingUp;
}

/// @nodoc
abstract class _$$_ChangeEmailCopyWith<$Res> {
  factory _$$_ChangeEmailCopyWith(
          _$_ChangeEmail value, $Res Function(_$_ChangeEmail) then) =
      __$$_ChangeEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChangeEmailCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_ChangeEmail>
    implements _$$_ChangeEmailCopyWith<$Res> {
  __$$_ChangeEmailCopyWithImpl(
      _$_ChangeEmail _value, $Res Function(_$_ChangeEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChangeEmail(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeEmail implements _ChangeEmail {
  const _$_ChangeEmail(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthenticationEvent.changeEmail(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeEmail &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      __$$_ChangeEmailCopyWithImpl<_$_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() singUp,
    required TResult Function(String value) changeEmail,
    required TResult Function(bool hidePassword) changeShowPassword,
    required TResult Function(String value) changePassword,
    required TResult Function(bool isSignUp) changeIsSigUp,
  }) {
    return changeEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? singUp,
    TResult? Function(String value)? changeEmail,
    TResult? Function(bool hidePassword)? changeShowPassword,
    TResult? Function(String value)? changePassword,
    TResult? Function(bool isSignUp)? changeIsSigUp,
  }) {
    return changeEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? singUp,
    TResult Function(String value)? changeEmail,
    TResult Function(bool hidePassword)? changeShowPassword,
    TResult Function(String value)? changePassword,
    TResult Function(bool isSignUp)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SingUp value) singUp,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeShowPassword value) changeShowPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeIsSigUp value) changeIsSigUp,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SingUp value)? singUp,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeShowPassword value)? changeShowPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeIsSigUp value)? changeIsSigUp,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SingUp value)? singUp,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeShowPassword value)? changeShowPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeIsSigUp value)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements AuthenticationEvent {
  const factory _ChangeEmail(final String value) = _$_ChangeEmail;

  String get value;
  @JsonKey(ignore: true)
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeShowPasswordCopyWith<$Res> {
  factory _$$_ChangeShowPasswordCopyWith(_$_ChangeShowPassword value,
          $Res Function(_$_ChangeShowPassword) then) =
      __$$_ChangeShowPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hidePassword});
}

/// @nodoc
class __$$_ChangeShowPasswordCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_ChangeShowPassword>
    implements _$$_ChangeShowPasswordCopyWith<$Res> {
  __$$_ChangeShowPasswordCopyWithImpl(
      _$_ChangeShowPassword _value, $Res Function(_$_ChangeShowPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hidePassword = null,
  }) {
    return _then(_$_ChangeShowPassword(
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeShowPassword implements _ChangeShowPassword {
  const _$_ChangeShowPassword({required this.hidePassword});

  @override
  final bool hidePassword;

  @override
  String toString() {
    return 'AuthenticationEvent.changeShowPassword(hidePassword: $hidePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeShowPassword &&
            (identical(other.hidePassword, hidePassword) ||
                other.hidePassword == hidePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hidePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeShowPasswordCopyWith<_$_ChangeShowPassword> get copyWith =>
      __$$_ChangeShowPasswordCopyWithImpl<_$_ChangeShowPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() singUp,
    required TResult Function(String value) changeEmail,
    required TResult Function(bool hidePassword) changeShowPassword,
    required TResult Function(String value) changePassword,
    required TResult Function(bool isSignUp) changeIsSigUp,
  }) {
    return changeShowPassword(hidePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? singUp,
    TResult? Function(String value)? changeEmail,
    TResult? Function(bool hidePassword)? changeShowPassword,
    TResult? Function(String value)? changePassword,
    TResult? Function(bool isSignUp)? changeIsSigUp,
  }) {
    return changeShowPassword?.call(hidePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? singUp,
    TResult Function(String value)? changeEmail,
    TResult Function(bool hidePassword)? changeShowPassword,
    TResult Function(String value)? changePassword,
    TResult Function(bool isSignUp)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (changeShowPassword != null) {
      return changeShowPassword(hidePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SingUp value) singUp,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeShowPassword value) changeShowPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeIsSigUp value) changeIsSigUp,
  }) {
    return changeShowPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SingUp value)? singUp,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeShowPassword value)? changeShowPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeIsSigUp value)? changeIsSigUp,
  }) {
    return changeShowPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SingUp value)? singUp,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeShowPassword value)? changeShowPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeIsSigUp value)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (changeShowPassword != null) {
      return changeShowPassword(this);
    }
    return orElse();
  }
}

abstract class _ChangeShowPassword implements AuthenticationEvent {
  const factory _ChangeShowPassword({required final bool hidePassword}) =
      _$_ChangeShowPassword;

  bool get hidePassword;
  @JsonKey(ignore: true)
  _$$_ChangeShowPasswordCopyWith<_$_ChangeShowPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordCopyWith<$Res> {
  factory _$$_ChangePasswordCopyWith(
          _$_ChangePassword value, $Res Function(_$_ChangePassword) then) =
      __$$_ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChangePasswordCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_ChangePassword>
    implements _$$_ChangePasswordCopyWith<$Res> {
  __$$_ChangePasswordCopyWithImpl(
      _$_ChangePassword _value, $Res Function(_$_ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChangePassword(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthenticationEvent.changePassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassword &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      __$$_ChangePasswordCopyWithImpl<_$_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() singUp,
    required TResult Function(String value) changeEmail,
    required TResult Function(bool hidePassword) changeShowPassword,
    required TResult Function(String value) changePassword,
    required TResult Function(bool isSignUp) changeIsSigUp,
  }) {
    return changePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? singUp,
    TResult? Function(String value)? changeEmail,
    TResult? Function(bool hidePassword)? changeShowPassword,
    TResult? Function(String value)? changePassword,
    TResult? Function(bool isSignUp)? changeIsSigUp,
  }) {
    return changePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? singUp,
    TResult Function(String value)? changeEmail,
    TResult Function(bool hidePassword)? changeShowPassword,
    TResult Function(String value)? changePassword,
    TResult Function(bool isSignUp)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SingUp value) singUp,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeShowPassword value) changeShowPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeIsSigUp value) changeIsSigUp,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SingUp value)? singUp,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeShowPassword value)? changeShowPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeIsSigUp value)? changeIsSigUp,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SingUp value)? singUp,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeShowPassword value)? changeShowPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeIsSigUp value)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements AuthenticationEvent {
  const factory _ChangePassword(final String value) = _$_ChangePassword;

  String get value;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeIsSigUpCopyWith<$Res> {
  factory _$$_ChangeIsSigUpCopyWith(
          _$_ChangeIsSigUp value, $Res Function(_$_ChangeIsSigUp) then) =
      __$$_ChangeIsSigUpCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSignUp});
}

/// @nodoc
class __$$_ChangeIsSigUpCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_ChangeIsSigUp>
    implements _$$_ChangeIsSigUpCopyWith<$Res> {
  __$$_ChangeIsSigUpCopyWithImpl(
      _$_ChangeIsSigUp _value, $Res Function(_$_ChangeIsSigUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = null,
  }) {
    return _then(_$_ChangeIsSigUp(
      isSignUp: null == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeIsSigUp implements _ChangeIsSigUp {
  const _$_ChangeIsSigUp({required this.isSignUp});

  @override
  final bool isSignUp;

  @override
  String toString() {
    return 'AuthenticationEvent.changeIsSigUp(isSignUp: $isSignUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeIsSigUp &&
            (identical(other.isSignUp, isSignUp) ||
                other.isSignUp == isSignUp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSignUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeIsSigUpCopyWith<_$_ChangeIsSigUp> get copyWith =>
      __$$_ChangeIsSigUpCopyWithImpl<_$_ChangeIsSigUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() singUp,
    required TResult Function(String value) changeEmail,
    required TResult Function(bool hidePassword) changeShowPassword,
    required TResult Function(String value) changePassword,
    required TResult Function(bool isSignUp) changeIsSigUp,
  }) {
    return changeIsSigUp(isSignUp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? singUp,
    TResult? Function(String value)? changeEmail,
    TResult? Function(bool hidePassword)? changeShowPassword,
    TResult? Function(String value)? changePassword,
    TResult? Function(bool isSignUp)? changeIsSigUp,
  }) {
    return changeIsSigUp?.call(isSignUp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? singUp,
    TResult Function(String value)? changeEmail,
    TResult Function(bool hidePassword)? changeShowPassword,
    TResult Function(String value)? changePassword,
    TResult Function(bool isSignUp)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (changeIsSigUp != null) {
      return changeIsSigUp(isSignUp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SingUp value) singUp,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeShowPassword value) changeShowPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeIsSigUp value) changeIsSigUp,
  }) {
    return changeIsSigUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SingUp value)? singUp,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeShowPassword value)? changeShowPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeIsSigUp value)? changeIsSigUp,
  }) {
    return changeIsSigUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SingUp value)? singUp,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeShowPassword value)? changeShowPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeIsSigUp value)? changeIsSigUp,
    required TResult orElse(),
  }) {
    if (changeIsSigUp != null) {
      return changeIsSigUp(this);
    }
    return orElse();
  }
}

abstract class _ChangeIsSigUp implements AuthenticationEvent {
  const factory _ChangeIsSigUp({required final bool isSignUp}) =
      _$_ChangeIsSigUp;

  bool get isSignUp;
  @JsonKey(ignore: true)
  _$$_ChangeIsSigUpCopyWith<_$_ChangeIsSigUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  EmailForm get emailForm => throw _privateConstructorUsedError;
  PasswordForm get passwordForm => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  bool get isSignUp => throw _privateConstructorUsedError;
  bool get hidePassword => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {EmailForm emailForm,
      PasswordForm passwordForm,
      FormzStatus status,
      bool isSignUp,
      bool hidePassword,
      String? errorMessage});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailForm = null,
    Object? passwordForm = null,
    Object? status = null,
    Object? isSignUp = null,
    Object? hidePassword = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      emailForm: null == emailForm
          ? _value.emailForm
          : emailForm // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      passwordForm: null == passwordForm
          ? _value.passwordForm
          : passwordForm // ignore: cast_nullable_to_non_nullable
              as PasswordForm,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      isSignUp: null == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailForm emailForm,
      PasswordForm passwordForm,
      FormzStatus status,
      bool isSignUp,
      bool hidePassword,
      String? errorMessage});
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_AuthenticationState>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailForm = null,
    Object? passwordForm = null,
    Object? status = null,
    Object? isSignUp = null,
    Object? hidePassword = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AuthenticationState(
      emailForm: null == emailForm
          ? _value.emailForm
          : emailForm // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      passwordForm: null == passwordForm
          ? _value.passwordForm
          : passwordForm // ignore: cast_nullable_to_non_nullable
              as PasswordForm,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      isSignUp: null == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {this.emailForm = const EmailForm.pure(),
      this.passwordForm = const PasswordForm.pure(),
      this.status = FormzStatus.pure,
      this.isSignUp = false,
      this.hidePassword = true,
      this.errorMessage});

  @override
  @JsonKey()
  final EmailForm emailForm;
  @override
  @JsonKey()
  final PasswordForm passwordForm;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final bool isSignUp;
  @override
  @JsonKey()
  final bool hidePassword;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthenticationState(emailForm: $emailForm, passwordForm: $passwordForm, status: $status, isSignUp: $isSignUp, hidePassword: $hidePassword, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationState &&
            (identical(other.emailForm, emailForm) ||
                other.emailForm == emailForm) &&
            (identical(other.passwordForm, passwordForm) ||
                other.passwordForm == passwordForm) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isSignUp, isSignUp) ||
                other.isSignUp == isSignUp) &&
            (identical(other.hidePassword, hidePassword) ||
                other.hidePassword == hidePassword) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailForm, passwordForm, status,
      isSignUp, hidePassword, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      __$$_AuthenticationStateCopyWithImpl<_$_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {final EmailForm emailForm,
      final PasswordForm passwordForm,
      final FormzStatus status,
      final bool isSignUp,
      final bool hidePassword,
      final String? errorMessage}) = _$_AuthenticationState;

  @override
  EmailForm get emailForm;
  @override
  PasswordForm get passwordForm;
  @override
  FormzStatus get status;
  @override
  bool get isSignUp;
  @override
  bool get hidePassword;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
