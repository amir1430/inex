// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int placeId) started,
    required TResult Function(ViewType type) changeViewType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int placeId)? started,
    TResult? Function(ViewType type)? changeViewType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int placeId)? started,
    TResult Function(ViewType type)? changeViewType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeViewType value) changeViewType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeViewType value)? changeViewType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeViewType value)? changeViewType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEventCopyWith<$Res> {
  factory $PlaceEventCopyWith(
          PlaceEvent value, $Res Function(PlaceEvent) then) =
      _$PlaceEventCopyWithImpl<$Res, PlaceEvent>;
}

/// @nodoc
class _$PlaceEventCopyWithImpl<$Res, $Val extends PlaceEvent>
    implements $PlaceEventCopyWith<$Res> {
  _$PlaceEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({int placeId});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
  }) {
    return _then(_$_Started(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.placeId});

  @override
  final int placeId;

  @override
  String toString() {
    return 'PlaceEvent.started(placeId: $placeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int placeId) started,
    required TResult Function(ViewType type) changeViewType,
  }) {
    return started(placeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int placeId)? started,
    TResult? Function(ViewType type)? changeViewType,
  }) {
    return started?.call(placeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int placeId)? started,
    TResult Function(ViewType type)? changeViewType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(placeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeViewType value) changeViewType,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeViewType value)? changeViewType,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeViewType value)? changeViewType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlaceEvent {
  const factory _Started({required final int placeId}) = _$_Started;

  int get placeId;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeViewTypeCopyWith<$Res> {
  factory _$$_ChangeViewTypeCopyWith(
          _$_ChangeViewType value, $Res Function(_$_ChangeViewType) then) =
      __$$_ChangeViewTypeCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType type});
}

/// @nodoc
class __$$_ChangeViewTypeCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$_ChangeViewType>
    implements _$$_ChangeViewTypeCopyWith<$Res> {
  __$$_ChangeViewTypeCopyWithImpl(
      _$_ChangeViewType _value, $Res Function(_$_ChangeViewType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_ChangeViewType(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }
}

/// @nodoc

class _$_ChangeViewType implements _ChangeViewType {
  const _$_ChangeViewType(this.type);

  @override
  final ViewType type;

  @override
  String toString() {
    return 'PlaceEvent.changeViewType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeViewType &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeViewTypeCopyWith<_$_ChangeViewType> get copyWith =>
      __$$_ChangeViewTypeCopyWithImpl<_$_ChangeViewType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int placeId) started,
    required TResult Function(ViewType type) changeViewType,
  }) {
    return changeViewType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int placeId)? started,
    TResult? Function(ViewType type)? changeViewType,
  }) {
    return changeViewType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int placeId)? started,
    TResult Function(ViewType type)? changeViewType,
    required TResult orElse(),
  }) {
    if (changeViewType != null) {
      return changeViewType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeViewType value) changeViewType,
  }) {
    return changeViewType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeViewType value)? changeViewType,
  }) {
    return changeViewType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeViewType value)? changeViewType,
    required TResult orElse(),
  }) {
    if (changeViewType != null) {
      return changeViewType(this);
    }
    return orElse();
  }
}

abstract class _ChangeViewType implements PlaceEvent {
  const factory _ChangeViewType(final ViewType type) = _$_ChangeViewType;

  ViewType get type;
  @JsonKey(ignore: true)
  _$$_ChangeViewTypeCopyWith<_$_ChangeViewType> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceState _$PlaceStateFromJson(Map<String, dynamic> json) {
  return _PlaceState.fromJson(json);
}

/// @nodoc
mixin _$PlaceState {
  PlaceStatus get status => throw _privateConstructorUsedError;
  Map<String, List<Transaction>> get transactions =>
      throw _privateConstructorUsedError;
  List<Transaction> get transactionsList => throw _privateConstructorUsedError;
  ViewType get viewType => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceStateCopyWith<PlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceStateCopyWith<$Res> {
  factory $PlaceStateCopyWith(
          PlaceState value, $Res Function(PlaceState) then) =
      _$PlaceStateCopyWithImpl<$Res, PlaceState>;
  @useResult
  $Res call(
      {PlaceStatus status,
      Map<String, List<Transaction>> transactions,
      List<Transaction> transactionsList,
      ViewType viewType,
      String? errorMessage});
}

/// @nodoc
class _$PlaceStateCopyWithImpl<$Res, $Val extends PlaceState>
    implements $PlaceStateCopyWith<$Res> {
  _$PlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? transactions = null,
    Object? transactionsList = null,
    Object? viewType = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Transaction>>,
      transactionsList: null == transactionsList
          ? _value.transactionsList
          : transactionsList // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceStateCopyWith<$Res>
    implements $PlaceStateCopyWith<$Res> {
  factory _$$_PlaceStateCopyWith(
          _$_PlaceState value, $Res Function(_$_PlaceState) then) =
      __$$_PlaceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlaceStatus status,
      Map<String, List<Transaction>> transactions,
      List<Transaction> transactionsList,
      ViewType viewType,
      String? errorMessage});
}

/// @nodoc
class __$$_PlaceStateCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$_PlaceState>
    implements _$$_PlaceStateCopyWith<$Res> {
  __$$_PlaceStateCopyWithImpl(
      _$_PlaceState _value, $Res Function(_$_PlaceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? transactions = null,
    Object? transactionsList = null,
    Object? viewType = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PlaceState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Transaction>>,
      transactionsList: null == transactionsList
          ? _value._transactionsList
          : transactionsList // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceState implements _PlaceState {
  const _$_PlaceState(
      {this.status = PlaceStatus.initial,
      final Map<String, List<Transaction>> transactions = const {},
      final List<Transaction> transactionsList = const [],
      this.viewType = ViewType.grid,
      this.errorMessage})
      : _transactions = transactions,
        _transactionsList = transactionsList;

  factory _$_PlaceState.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceStateFromJson(json);

  @override
  @JsonKey()
  final PlaceStatus status;
  final Map<String, List<Transaction>> _transactions;
  @override
  @JsonKey()
  Map<String, List<Transaction>> get transactions {
    if (_transactions is EqualUnmodifiableMapView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_transactions);
  }

  final List<Transaction> _transactionsList;
  @override
  @JsonKey()
  List<Transaction> get transactionsList {
    if (_transactionsList is EqualUnmodifiableListView)
      return _transactionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionsList);
  }

  @override
  @JsonKey()
  final ViewType viewType;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PlaceState(status: $status, transactions: $transactions, transactionsList: $transactionsList, viewType: $viewType, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality()
                .equals(other._transactionsList, _transactionsList) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_transactionsList),
      viewType,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceStateCopyWith<_$_PlaceState> get copyWith =>
      __$$_PlaceStateCopyWithImpl<_$_PlaceState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceStateToJson(
      this,
    );
  }
}

abstract class _PlaceState implements PlaceState {
  const factory _PlaceState(
      {final PlaceStatus status,
      final Map<String, List<Transaction>> transactions,
      final List<Transaction> transactionsList,
      final ViewType viewType,
      final String? errorMessage}) = _$_PlaceState;

  factory _PlaceState.fromJson(Map<String, dynamic> json) =
      _$_PlaceState.fromJson;

  @override
  PlaceStatus get status;
  @override
  Map<String, List<Transaction>> get transactions;
  @override
  List<Transaction> get transactionsList;
  @override
  ViewType get viewType;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceStateCopyWith<_$_PlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}
