// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AppEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AppEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$$_SyncingCopyWith<$Res> {
  factory _$$_SyncingCopyWith(
          _$_Syncing value, $Res Function(_$_Syncing) then) =
      __$$_SyncingCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUid});
}

/// @nodoc
class __$$_SyncingCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Syncing>
    implements _$$_SyncingCopyWith<$Res> {
  __$$_SyncingCopyWithImpl(_$_Syncing _value, $Res Function(_$_Syncing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
  }) {
    return _then(_$_Syncing(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Syncing implements _Syncing {
  const _$_Syncing({required this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'AppEvent.syncing(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Syncing &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SyncingCopyWith<_$_Syncing> get copyWith =>
      __$$_SyncingCopyWithImpl<_$_Syncing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return syncing(userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return syncing?.call(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (syncing != null) {
      return syncing(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return syncing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return syncing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (syncing != null) {
      return syncing(this);
    }
    return orElse();
  }
}

abstract class _Syncing implements AppEvent {
  const factory _Syncing({required final String userUid}) = _$_Syncing;

  String get userUid;
  @JsonKey(ignore: true)
  _$$_SyncingCopyWith<_$_Syncing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShareCopyWith<$Res> {
  factory _$$_ShareCopyWith(_$_Share value, $Res Function(_$_Share) then) =
      __$$_ShareCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShareCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Share>
    implements _$$_ShareCopyWith<$Res> {
  __$$_ShareCopyWithImpl(_$_Share _value, $Res Function(_$_Share) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Share implements _Share {
  const _$_Share();

  @override
  String toString() {
    return 'AppEvent.share()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Share);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return share();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return share?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return share(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return share?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(this);
    }
    return orElse();
  }
}

abstract class _Share implements AppEvent {
  const factory _Share() = _$_Share;
}

/// @nodoc
abstract class _$$_ImportCopyWith<$Res> {
  factory _$$_ImportCopyWith(_$_Import value, $Res Function(_$_Import) then) =
      __$$_ImportCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ImportCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Import>
    implements _$$_ImportCopyWith<$Res> {
  __$$_ImportCopyWithImpl(_$_Import _value, $Res Function(_$_Import) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Import implements _Import {
  const _$_Import();

  @override
  String toString() {
    return 'AppEvent.import()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Import);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return import();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return import?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (import != null) {
      return import();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return import(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return import?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (import != null) {
      return import(this);
    }
    return orElse();
  }
}

abstract class _Import implements AppEvent {
  const factory _Import() = _$_Import;
}

/// @nodoc
abstract class _$$_ExportCopyWith<$Res> {
  factory _$$_ExportCopyWith(_$_Export value, $Res Function(_$_Export) then) =
      __$$_ExportCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExportCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Export>
    implements _$$_ExportCopyWith<$Res> {
  __$$_ExportCopyWithImpl(_$_Export _value, $Res Function(_$_Export) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Export implements _Export {
  const _$_Export();

  @override
  String toString() {
    return 'AppEvent.export()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Export);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return export();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return export?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (export != null) {
      return export();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return export(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return export?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (export != null) {
      return export(this);
    }
    return orElse();
  }
}

abstract class _Export implements AppEvent {
  const factory _Export() = _$_Export;
}

/// @nodoc
abstract class _$$_ChangeThemeCopyWith<$Res> {
  factory _$$_ChangeThemeCopyWith(
          _$_ChangeTheme value, $Res Function(_$_ChangeTheme) then) =
      __$$_ChangeThemeCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$_ChangeThemeCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_ChangeTheme>
    implements _$$_ChangeThemeCopyWith<$Res> {
  __$$_ChangeThemeCopyWithImpl(
      _$_ChangeTheme _value, $Res Function(_$_ChangeTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$_ChangeTheme(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeTheme implements _ChangeTheme {
  const _$_ChangeTheme({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppEvent.changeTheme(isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTheme &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      __$$_ChangeThemeCopyWithImpl<_$_ChangeTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return changeTheme(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return changeTheme?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements AppEvent {
  const factory _ChangeTheme({required final bool isDark}) = _$_ChangeTheme;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeCurrenyFormatCopyWith<$Res> {
  factory _$$_ChangeCurrenyFormatCopyWith(_$_ChangeCurrenyFormat value,
          $Res Function(_$_ChangeCurrenyFormat) then) =
      __$$_ChangeCurrenyFormatCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyFormat format});
}

/// @nodoc
class __$$_ChangeCurrenyFormatCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_ChangeCurrenyFormat>
    implements _$$_ChangeCurrenyFormatCopyWith<$Res> {
  __$$_ChangeCurrenyFormatCopyWithImpl(_$_ChangeCurrenyFormat _value,
      $Res Function(_$_ChangeCurrenyFormat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
  }) {
    return _then(_$_ChangeCurrenyFormat(
      null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CurrencyFormat,
    ));
  }
}

/// @nodoc

class _$_ChangeCurrenyFormat implements _ChangeCurrenyFormat {
  const _$_ChangeCurrenyFormat(this.format);

  @override
  final CurrencyFormat format;

  @override
  String toString() {
    return 'AppEvent.changeCurrenyFormat(format: $format)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCurrenyFormat &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode => Object.hash(runtimeType, format);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCurrenyFormatCopyWith<_$_ChangeCurrenyFormat> get copyWith =>
      __$$_ChangeCurrenyFormatCopyWithImpl<_$_ChangeCurrenyFormat>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOut,
    required TResult Function(String userUid) syncing,
    required TResult Function() share,
    required TResult Function() import,
    required TResult Function() export,
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return changeCurrenyFormat(format);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOut,
    TResult? Function(String userUid)? syncing,
    TResult? Function()? share,
    TResult? Function()? import,
    TResult? Function()? export,
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return changeCurrenyFormat?.call(format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOut,
    TResult Function(String userUid)? syncing,
    TResult Function()? share,
    TResult Function()? import,
    TResult Function()? export,
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (changeCurrenyFormat != null) {
      return changeCurrenyFormat(format);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Share value) share,
    required TResult Function(_Import value) import,
    required TResult Function(_Export value) export,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return changeCurrenyFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Share value)? share,
    TResult? Function(_Import value)? import,
    TResult? Function(_Export value)? export,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return changeCurrenyFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Share value)? share,
    TResult Function(_Import value)? import,
    TResult Function(_Export value)? export,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
    required TResult orElse(),
  }) {
    if (changeCurrenyFormat != null) {
      return changeCurrenyFormat(this);
    }
    return orElse();
  }
}

abstract class _ChangeCurrenyFormat implements AppEvent {
  const factory _ChangeCurrenyFormat(final CurrencyFormat format) =
      _$_ChangeCurrenyFormat;

  CurrencyFormat get format;
  @JsonKey(ignore: true)
  _$$_ChangeCurrenyFormatCopyWith<_$_ChangeCurrenyFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  bool get isThemeDark => throw _privateConstructorUsedError;
  SyncingStatus get syncingStatus => throw _privateConstructorUsedError;
  CurrencyFormat get currencyFormat => throw _privateConstructorUsedError;
  ExportingStatus get exportingStatus => throw _privateConstructorUsedError;
  ImportingStatus get importingStatus => throw _privateConstructorUsedError;
  AuthenticationStatus get authenticationStatus =>
      throw _privateConstructorUsedError;
  String? get importMessage => throw _privateConstructorUsedError;
  String? get exportPath => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {bool isThemeDark,
      SyncingStatus syncingStatus,
      CurrencyFormat currencyFormat,
      ExportingStatus exportingStatus,
      ImportingStatus importingStatus,
      AuthenticationStatus authenticationStatus,
      String? importMessage,
      String? exportPath,
      String? errorMessage});

  $AuthenticationStatusCopyWith<$Res> get authenticationStatus;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isThemeDark = null,
    Object? syncingStatus = null,
    Object? currencyFormat = null,
    Object? exportingStatus = null,
    Object? importingStatus = null,
    Object? authenticationStatus = null,
    Object? importMessage = freezed,
    Object? exportPath = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isThemeDark: null == isThemeDark
          ? _value.isThemeDark
          : isThemeDark // ignore: cast_nullable_to_non_nullable
              as bool,
      syncingStatus: null == syncingStatus
          ? _value.syncingStatus
          : syncingStatus // ignore: cast_nullable_to_non_nullable
              as SyncingStatus,
      currencyFormat: null == currencyFormat
          ? _value.currencyFormat
          : currencyFormat // ignore: cast_nullable_to_non_nullable
              as CurrencyFormat,
      exportingStatus: null == exportingStatus
          ? _value.exportingStatus
          : exportingStatus // ignore: cast_nullable_to_non_nullable
              as ExportingStatus,
      importingStatus: null == importingStatus
          ? _value.importingStatus
          : importingStatus // ignore: cast_nullable_to_non_nullable
              as ImportingStatus,
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      importMessage: freezed == importMessage
          ? _value.importMessage
          : importMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      exportPath: freezed == exportPath
          ? _value.exportPath
          : exportPath // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationStatusCopyWith<$Res> get authenticationStatus {
    return $AuthenticationStatusCopyWith<$Res>(_value.authenticationStatus,
        (value) {
      return _then(_value.copyWith(authenticationStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isThemeDark,
      SyncingStatus syncingStatus,
      CurrencyFormat currencyFormat,
      ExportingStatus exportingStatus,
      ImportingStatus importingStatus,
      AuthenticationStatus authenticationStatus,
      String? importMessage,
      String? exportPath,
      String? errorMessage});

  @override
  $AuthenticationStatusCopyWith<$Res> get authenticationStatus;
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isThemeDark = null,
    Object? syncingStatus = null,
    Object? currencyFormat = null,
    Object? exportingStatus = null,
    Object? importingStatus = null,
    Object? authenticationStatus = null,
    Object? importMessage = freezed,
    Object? exportPath = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AppState(
      isThemeDark: null == isThemeDark
          ? _value.isThemeDark
          : isThemeDark // ignore: cast_nullable_to_non_nullable
              as bool,
      syncingStatus: null == syncingStatus
          ? _value.syncingStatus
          : syncingStatus // ignore: cast_nullable_to_non_nullable
              as SyncingStatus,
      currencyFormat: null == currencyFormat
          ? _value.currencyFormat
          : currencyFormat // ignore: cast_nullable_to_non_nullable
              as CurrencyFormat,
      exportingStatus: null == exportingStatus
          ? _value.exportingStatus
          : exportingStatus // ignore: cast_nullable_to_non_nullable
              as ExportingStatus,
      importingStatus: null == importingStatus
          ? _value.importingStatus
          : importingStatus // ignore: cast_nullable_to_non_nullable
              as ImportingStatus,
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      importMessage: freezed == importMessage
          ? _value.importMessage
          : importMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      exportPath: freezed == exportPath
          ? _value.exportPath
          : exportPath // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {this.isThemeDark = false,
      this.syncingStatus = SyncingStatus.initial,
      this.currencyFormat = CurrencyFormat.iranRial,
      this.exportingStatus = ExportingStatus.initial,
      this.importingStatus = ImportingStatus.initial,
      this.authenticationStatus = const AuthenticationStatus.initial(),
      this.importMessage,
      this.exportPath,
      this.errorMessage});

  @override
  @JsonKey()
  final bool isThemeDark;
  @override
  @JsonKey()
  final SyncingStatus syncingStatus;
  @override
  @JsonKey()
  final CurrencyFormat currencyFormat;
  @override
  @JsonKey()
  final ExportingStatus exportingStatus;
  @override
  @JsonKey()
  final ImportingStatus importingStatus;
  @override
  @JsonKey()
  final AuthenticationStatus authenticationStatus;
  @override
  final String? importMessage;
  @override
  final String? exportPath;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppState(isThemeDark: $isThemeDark, syncingStatus: $syncingStatus, currencyFormat: $currencyFormat, exportingStatus: $exportingStatus, importingStatus: $importingStatus, authenticationStatus: $authenticationStatus, importMessage: $importMessage, exportPath: $exportPath, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.isThemeDark, isThemeDark) ||
                other.isThemeDark == isThemeDark) &&
            (identical(other.syncingStatus, syncingStatus) ||
                other.syncingStatus == syncingStatus) &&
            (identical(other.currencyFormat, currencyFormat) ||
                other.currencyFormat == currencyFormat) &&
            (identical(other.exportingStatus, exportingStatus) ||
                other.exportingStatus == exportingStatus) &&
            (identical(other.importingStatus, importingStatus) ||
                other.importingStatus == importingStatus) &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                other.authenticationStatus == authenticationStatus) &&
            (identical(other.importMessage, importMessage) ||
                other.importMessage == importMessage) &&
            (identical(other.exportPath, exportPath) ||
                other.exportPath == exportPath) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isThemeDark,
      syncingStatus,
      currencyFormat,
      exportingStatus,
      importingStatus,
      authenticationStatus,
      importMessage,
      exportPath,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final bool isThemeDark,
      final SyncingStatus syncingStatus,
      final CurrencyFormat currencyFormat,
      final ExportingStatus exportingStatus,
      final ImportingStatus importingStatus,
      final AuthenticationStatus authenticationStatus,
      final String? importMessage,
      final String? exportPath,
      final String? errorMessage}) = _$_AppState;

  @override
  bool get isThemeDark;
  @override
  SyncingStatus get syncingStatus;
  @override
  CurrencyFormat get currencyFormat;
  @override
  ExportingStatus get exportingStatus;
  @override
  ImportingStatus get importingStatus;
  @override
  AuthenticationStatus get authenticationStatus;
  @override
  String? get importMessage;
  @override
  String? get exportPath;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
