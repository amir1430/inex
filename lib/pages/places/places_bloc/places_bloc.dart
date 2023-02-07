import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inex/data_source/data_source.dart';
import 'package:inex/data_source/model/place.dart';
import 'package:inex/exceptions/exceptions.dart';

part 'places_event.dart';
part 'places_state.dart';
part 'places_bloc.freezed.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  PlacesBloc(this.dataSource) : super(const PlacesState()) {
    on<_Started>(_onStarted);
    on<_Add>(_onAdd);
    on<_Remove>(_onRemove);
  }

  final IDataSource dataSource;

  Future<void> _onStarted(
    _Started event,
    Emitter<PlacesState> emit,
  ) async {
    emit(state.copyWith(stateStatus: PlacesStateStatus.inProgress));
    await emit.forEach(
      dataSource.placesStream,
      onData: (data) {
        return state.copyWith(
          places: data,
          stateStatus: PlacesStateStatus.success,
        );
      },
      onError: (error, stackTrace) {
        return state.copyWith(
          stateStatus: PlacesStateStatus.failure,
          errorMessage: error.toString(),
        );
      },
    );
  }

  Future<void> _onAdd(
    _Add event,
    Emitter<PlacesState> emit,
  ) async {}

  Future<void> _onRemove(
    _Remove event,
    Emitter<PlacesState> emit,
  ) async {
    try {
      await dataSource.deletePlace(event.id);
    } on InexException catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
        ),
      );
    } finally {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      emit(state.copyWith(errorMessage: null));
    }
  }
}
