import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inex/pages/app/app.dart';
import 'package:inex/pages/transactions/transactions_bloc/transactions_bloc.dart';
import 'package:inex/utils/currency_format.dart';
import 'package:inex/utils/transactions_to_split_per_day.dart';
import 'package:inex/widgets/widgets.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TransactionsBloc, TransactionsState>(
        builder: (context, state) {
          switch (state.status) {
            case TransactionsStatus.initial:
              return const SizedBox.shrink();
            case TransactionsStatus.inProgress:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case TransactionsStatus.failure:
              return Center(
                child: Text(state.errorMessage!),
              );
            case TransactionsStatus.success:
              final totalExpenses = state.transactions.totalExpenses;
              final totalIncome = state.transactions.totalIncome;
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
                          itemCount: state.transactions.length,
                          itemBuilder: (BuildContext context, int index) {
                            final transaction = state.transactions[index];
                            return TransactionTile(
                              transaction: transaction,
                              currencyFormat: currency,
                              index: index + 1,
                              onDelete: (transaction) {
                                context.read<TransactionsBloc>().add(
                                      TransactionsEvent.delete(transaction.id),
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
