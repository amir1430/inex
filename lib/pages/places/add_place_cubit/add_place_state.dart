part of 'add_place_cubit.dart';

@freezed
class AddPlaceState with _$AddPlaceState {
  const factory AddPlaceState({
    int? id,
    Place? place,
    @Default(DescriptionForm.pure()) DescriptionForm descriptionForm,
    @Default(NameForm.pure()) NameForm nameForm,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
    String? message,
  }) = _AddPlaceState;
}
