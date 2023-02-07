part of 'places_bloc.dart';

@freezed
class PlacesEvent with _$PlacesEvent {
  const factory PlacesEvent.started() = _Started;
  const factory PlacesEvent.add({required Place place}) = _Add;
  const factory PlacesEvent.remove(int id) = _Remove;
}
