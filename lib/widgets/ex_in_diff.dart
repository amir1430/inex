import 'package:flutter/material.dart';
import 'package:inex/utils/currency_format.dart';
import 'package:inex/utils/formatters.dart';

class ExInDiffWidget extends StatelessWidget {
  const ExInDiffWidget({
    super.key,
    required this.totalIncome,
    required this.totalExpenses,
    required this.diff,
    required this.currencyFormat,
  });

  final int totalIncome;
  final int totalExpenses;
  final int diff;
  final CurrencyFormat currencyFormat;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 8,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.attach_money,
              color: Colors.green,
            ),
            Text(
              CurrencyInputFormatter.format(
                totalIncome,
                format: currencyFormat,
              ),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.money_off,
              color: Colors.red,
            ),
            Text(
              CurrencyInputFormatter.format(
                totalExpenses,
                format: currencyFormat,
              ),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.account_balance_wallet_outlined,
              color: Colors.grey,
            ),
            const SizedBox(width: 4),
            Text(
              CurrencyInputFormatter.format(
                diff,
                format: currencyFormat,
              ),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: diff.isNegative ? Colors.red : Colors.green,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
