part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.started() = _Started;
  const factory TransactionsEvent.delete(Transaction transaction) = _Delete;
}
