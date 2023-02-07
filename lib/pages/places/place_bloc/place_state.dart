part of 'place_bloc.dart';

enum PlaceStatus { initial, inProgress, failure, success }

// @JsonSerializable(ignoreUnannotated: true)
@freezed
class PlaceState with _$PlaceState {
  const factory PlaceState({
    @Default(PlaceStatus.initial) PlaceStatus status,
    @Default({}) Map<Date, Transactions> transactions,
    @Default([]) Transactions transactionsList,
    @Default(ViewType.grid) ViewType viewType,
    String? errorMessage,
  }) = _PlaceState;

  factory PlaceState.fromJson(Map<String, dynamic> json) =>
      _$PlaceStateFromJson(json);
}
