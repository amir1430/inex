import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inex/pages/app/app.dart';
import 'package:inex/pages/transactions/transactions.dart';
import 'package:inex/utils/currency_format.dart';
import 'package:inex/utils/utils.dart';
import 'package:inex/widgets/widgets.dart';

class PlaceTransactionView extends StatelessWidget {
  const PlaceTransactionView({
    super.key,
    required this.date,
    required this.id,
    required this.name,
  });

  final String? date;
  final String? id;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(date ?? ''),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_card),
        onPressed: () {
          final parsedId = int.tryParse(id ?? '-');
          if (parsedId == null) {
            return;
          }
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: AddTransactionView(
                  placeId: parsedId,
                  initialDate: date,
                ),
              );
            },
          );
        },
      ),
      body: BlocBuilder<TransactionsBloc, TransactionsState>(
        builder: (context, state) {
          final list = state.filterByDate(date!, name!);

          if (list == null) {
            return const Center(
              child: Text('There is nothing to show'),
            );
          } else {
            final totalExpenses = list.totalExpenses;
            final totalIncome = list.totalIncome;
            final diff = totalIncome - totalExpenses;

            return Column(
              children: [
                BlocSelector<AppBloc, AppState, CurrencyFormat>(
                  selector: (state) => state.currencyFormat,
                  builder: (context, currency) {
                    return ExInDiffWidget(
                      totalIncome: totalIncome,
                      totalExpenses: totalExpenses,
                      diff: diff,
                      currencyFormat: currency,
                    );
                  },
                ),
                Expanded(
                  child: BlocSelector<AppBloc, AppState, CurrencyFormat>(
                    selector: (state) => state.currencyFormat,
                    builder: (context, currency) {
                      return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (
                          BuildContext context,
                          int index,
                        ) {
                          final x = list[index];
                          return TransactionTile(
                            transaction: x,
                            currencyFormat: currency,
                            index: index + 1,
                            onDelete: (transaction) {
                              context.read<TransactionsBloc>().add(
                                    TransactionsEvent.delete(transaction),
                                  );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
