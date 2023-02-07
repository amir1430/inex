import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inex/data_source/data_source.dart';
import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/utils/utils.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';
part 'transactions_bloc.freezed.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc({required this.dataSource})
      : super(const TransactionsState()) {
    on<_Started>(_onStarted);
    on<_Delete>(_onDelete);
  }

  final IDataSource dataSource;

  Future<void> _onStarted(
    _Started event,
    Emitter<TransactionsState> emit,
  ) async {
    emit(state.copyWith(status: TransactionsStatus.inProgress));

    await emit.forEach(
      dataSource.transactionsStream(),
      onData: (data) {
        return state.copyWith(
          status: TransactionsStatus.success,
          transactions: data,
        );
      },
    );
  }

  Future<void> _onDelete(
    _Delete event,
    Emitter<TransactionsState> emit,
  ) async {
    try {
      await dataSource.deleteTransaction(event.id);
    } catch (e) {
      log(e.toString());
    }
  }
}
