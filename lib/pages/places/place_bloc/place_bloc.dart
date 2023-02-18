import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/repository/repository.dart';
import 'package:inex/utils/utils.dart';

part 'place_event.dart';
part 'place_state.dart';
part 'place_bloc.freezed.dart';
part 'place_bloc.g.dart';

class PlaceBloc extends HydratedBloc<PlaceEvent, PlaceState> {
  PlaceBloc(this.repository) : super(const PlaceState()) {
    on<_Started>(_onStarted);
    on<_ChangeViewType>(_onChangeViewType);
  }

  final Repository repository;

  Future<void> _onStarted(
    _Started event,
    Emitter<PlaceState> emit,
  ) async {
    emit(state.copyWith(status: PlaceStatus.inProgress));
    await emit.forEach(
      repository.transactionsStream(id: event.placeId),
      onData: (data) {
        return state.copyWith(
          status: PlaceStatus.success,
          transactions: transactionsToSplitPerDate(data),
          transactionsList: data,
        );
      },
    );
  }

  void _onChangeViewType(
    _ChangeViewType event,
    Emitter<PlaceState> emit,
  ) {
    emit(state.copyWith(viewType: event.type));
  }

  @override
  PlaceState? fromJson(Map<String, dynamic> json) {
    return PlaceState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PlaceState state) {
    return state.toJson();
  }
}
