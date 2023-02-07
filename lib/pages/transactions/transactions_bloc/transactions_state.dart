part of 'transactions_bloc.dart';

enum TransactionsStatus { initial, inProgress, success, failure }

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    @Default(TransactionsStatus.initial) TransactionsStatus status,
    @Default([]) List<Transaction> transactions,
    String? errorMessage,
  }) = _TransactionsState;
}

extension TransactionsStateX on TransactionsState {
  Transactions? filterByDate(Date date, String placeName) =>
      transactionsToSplitPerDate(
        [
          ...transactions
              .where((element) => element.place.value?.name == placeName)
        ],
      )[date];
}
