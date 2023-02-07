part of 'places_bloc.dart';

enum PlacesStateStatus { initial, inProgress, success, failure }

@freezed
class PlacesState with _$PlacesState {
  const factory PlacesState({
    @Default([]) List<Place> places,
    @Default(PlacesStateStatus.initial) PlacesStateStatus stateStatus,
    String? errorMessage,
  }) = _PlacesState;
}
