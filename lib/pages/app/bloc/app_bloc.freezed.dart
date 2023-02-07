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
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? changeTheme,
    TResult Function(CurrencyFormat format)? changeCurrenyFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return changeTheme(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return changeTheme?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
    required TResult Function(bool isDark) changeTheme,
    required TResult Function(CurrencyFormat format) changeCurrenyFormat,
  }) {
    return changeCurrenyFormat(format);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? changeTheme,
    TResult? Function(CurrencyFormat format)? changeCurrenyFormat,
  }) {
    return changeCurrenyFormat?.call(format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeCurrenyFormat value) changeCurrenyFormat,
  }) {
    return changeCurrenyFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeCurrenyFormat value)? changeCurrenyFormat,
  }) {
    return changeCurrenyFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  bool get isThemeDark => throw _privateConstructorUsedError;
  CurrencyFormat get currencyFormat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({bool isThemeDark, CurrencyFormat currencyFormat});
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
    Object? currencyFormat = null,
  }) {
    return _then(_value.copyWith(
      isThemeDark: null == isThemeDark
          ? _value.isThemeDark
          : isThemeDark // ignore: cast_nullable_to_non_nullable
              as bool,
      currencyFormat: null == currencyFormat
          ? _value.currencyFormat
          : currencyFormat // ignore: cast_nullable_to_non_nullable
              as CurrencyFormat,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isThemeDark, CurrencyFormat currencyFormat});
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
    Object? currencyFormat = null,
  }) {
    return _then(_$_AppState(
      isThemeDark: null == isThemeDark
          ? _value.isThemeDark
          : isThemeDark // ignore: cast_nullable_to_non_nullable
              as bool,
      currencyFormat: null == currencyFormat
          ? _value.currencyFormat
          : currencyFormat // ignore: cast_nullable_to_non_nullable
              as CurrencyFormat,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState implements _AppState {
  const _$_AppState(
      {this.isThemeDark = false,
      this.currencyFormat = CurrencyFormat.iranRial});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  @JsonKey()
  final bool isThemeDark;
  @override
  @JsonKey()
  final CurrencyFormat currencyFormat;

  @override
  String toString() {
    return 'AppState(isThemeDark: $isThemeDark, currencyFormat: $currencyFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.isThemeDark, isThemeDark) ||
                other.isThemeDark == isThemeDark) &&
            (identical(other.currencyFormat, currencyFormat) ||
                other.currencyFormat == currencyFormat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isThemeDark, currencyFormat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final bool isThemeDark,
      final CurrencyFormat currencyFormat}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  bool get isThemeDark;
  @override
  CurrencyFormat get currencyFormat;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
