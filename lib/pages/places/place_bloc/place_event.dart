part of 'place_bloc.dart';

@freezed
class PlaceEvent with _$PlaceEvent {
  const factory PlaceEvent.started({required int placeId}) = _Started;
  const factory PlaceEvent.changeViewType(ViewType type) = _ChangeViewType;
}
