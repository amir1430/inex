// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_place_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPlaceState {
  int? get id => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;
  DescriptionForm get descriptionForm => throw _privateConstructorUsedError;
  NameForm get nameForm => throw _privateConstructorUsedError;
  FormzStatus get formzStatus => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPlaceStateCopyWith<AddPlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlaceStateCopyWith<$Res> {
  factory $AddPlaceStateCopyWith(
          AddPlaceState value, $Res Function(AddPlaceState) then) =
      _$AddPlaceStateCopyWithImpl<$Res, AddPlaceState>;
  @useResult
  $Res call(
      {int? id,
      Place? place,
      DescriptionForm descriptionForm,
      NameForm nameForm,
      FormzStatus formzStatus,
      String? message});
}

/// @nodoc
class _$AddPlaceStateCopyWithImpl<$Res, $Val extends AddPlaceState>
    implements $AddPlaceStateCopyWith<$Res> {
  _$AddPlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? place = freezed,
    Object? descriptionForm = null,
    Object? nameForm = null,
    Object? formzStatus = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      descriptionForm: null == descriptionForm
          ? _value.descriptionForm
          : descriptionForm // ignore: cast_nullable_to_non_nullable
              as DescriptionForm,
      nameForm: null == nameForm
          ? _value.nameForm
          : nameForm // ignore: cast_nullable_to_non_nullable
              as NameForm,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddPlaceStateCopyWith<$Res>
    implements $AddPlaceStateCopyWith<$Res> {
  factory _$$_AddPlaceStateCopyWith(
          _$_AddPlaceState value, $Res Function(_$_AddPlaceState) then) =
      __$$_AddPlaceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Place? place,
      DescriptionForm descriptionForm,
      NameForm nameForm,
      FormzStatus formzStatus,
      String? message});
}

/// @nodoc
class __$$_AddPlaceStateCopyWithImpl<$Res>
    extends _$AddPlaceStateCopyWithImpl<$Res, _$_AddPlaceState>
    implements _$$_AddPlaceStateCopyWith<$Res> {
  __$$_AddPlaceStateCopyWithImpl(
      _$_AddPlaceState _value, $Res Function(_$_AddPlaceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? place = freezed,
    Object? descriptionForm = null,
    Object? nameForm = null,
    Object? formzStatus = null,
    Object? message = freezed,
  }) {
    return _then(_$_AddPlaceState(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      descriptionForm: null == descriptionForm
          ? _value.descriptionForm
          : descriptionForm // ignore: cast_nullable_to_non_nullable
              as DescriptionForm,
      nameForm: null == nameForm
          ? _value.nameForm
          : nameForm // ignore: cast_nullable_to_non_nullable
              as NameForm,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddPlaceState implements _AddPlaceState {
  const _$_AddPlaceState(
      {this.id,
      this.place,
      this.descriptionForm = const DescriptionForm.pure(),
      this.nameForm = const NameForm.pure(),
      this.formzStatus = FormzStatus.pure,
      this.message});

  @override
  final int? id;
  @override
  final Place? place;
  @override
  @JsonKey()
  final DescriptionForm descriptionForm;
  @override
  @JsonKey()
  final NameForm nameForm;
  @override
  @JsonKey()
  final FormzStatus formzStatus;
  @override
  final String? message;

  @override
  String toString() {
    return 'AddPlaceState(id: $id, place: $place, descriptionForm: $descriptionForm, nameForm: $nameForm, formzStatus: $formzStatus, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPlaceState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.descriptionForm, descriptionForm) ||
                other.descriptionForm == descriptionForm) &&
            (identical(other.nameForm, nameForm) ||
                other.nameForm == nameForm) &&
            (identical(other.formzStatus, formzStatus) ||
                other.formzStatus == formzStatus) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, place, descriptionForm, nameForm, formzStatus, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPlaceStateCopyWith<_$_AddPlaceState> get copyWith =>
      __$$_AddPlaceStateCopyWithImpl<_$_AddPlaceState>(this, _$identity);
}

abstract class _AddPlaceState implements AddPlaceState {
  const factory _AddPlaceState(
      {final int? id,
      final Place? place,
      final DescriptionForm descriptionForm,
      final NameForm nameForm,
      final FormzStatus formzStatus,
      final String? message}) = _$_AddPlaceState;

  @override
  int? get id;
  @override
  Place? get place;
  @override
  DescriptionForm get descriptionForm;
  @override
  NameForm get nameForm;
  @override
  FormzStatus get formzStatus;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AddPlaceStateCopyWith<_$_AddPlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}
