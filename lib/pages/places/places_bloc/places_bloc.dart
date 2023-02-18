import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inex/data_source/model/place.dart';
import 'package:inex/exceptions/exceptions.dart';
import 'package:inex/repository/repository.dart';

part 'places_event.dart';
part 'places_state.dart';
part 'places_bloc.freezed.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  PlacesBloc({
    required this.repository,
  }) : super(const PlacesState()) {
    on<_Started>(_onStarted);
    on<_Add>(_onAdd);
    on<_Remove>(_onRemove);
  }

  final Repository repository;

  Future<void> _onStarted(
    _Started event,
    Emitter<PlacesState> emit,
  ) async {
    emit(state.copyWith(stateStatus: PlacesStateStatus.inProgress));
    await emit.forEach(
      repository.placesStream,
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
      await repository.deletePlace(id: event.id);
    } on DataSourceHaveDependencyException {
      emit(
        state.copyWith(
          errorMessage: 'This place have transactions. Remove them first',
        ),
      );
    } catch (e) {
      log(e.toString());
    } finally {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      emit(state.copyWith(errorMessage: null));
    }
  }
}
