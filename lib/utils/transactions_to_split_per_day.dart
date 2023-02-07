import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/utils/time.dart';

typedef Date = String;
typedef Transactions = List<Transaction>;

Map<Date, Transactions> transactionsToSplitPerDate(Transactions transactions) {
  final data = <Date, Transactions>{};
  for (final transaction in transactions) {
    final date = InexTime.unixToDay(transaction.time);
    if (data.containsKey(date)) {
      data[date]!.add(transaction);
    } else {
      data[date] = [transaction];
    }
  }
  return data;
}

extension TransactionsX on Transactions {
  int get totalExpenses {
    final newList = where((element) => element.type == TransactionType.expenses)
        .map((e) => e.amount)
        .toList();

    return newList.isEmpty
        ? 0
        : newList.reduce((value, element) => value + element);
  }

  int get totalIncome {
    final newList = where((element) => element.type == TransactionType.income)
        .map((e) => e.amount)
        .toList();

    return newList.isEmpty
        ? 0
        : newList.reduce((value, element) => value + element);
  }
}

extension MapTransactionsX on Map<Date, Transactions> {
  int get totalExpenses {
    final list = entries.map((e) => e.value.totalExpenses);
    return list.isEmpty ? 0 : list.reduce((value, element) => value + element);
  }

  int get totalIncome {
    final list = entries.map((e) => e.value.totalIncome);
    return list.isEmpty ? 0 : list.reduce((value, element) => value + element);
  }
}
