import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/pages/app/app.dart';
import 'package:inex/utils/currency_format.dart';
import 'package:inex/utils/utils.dart';
import 'package:inex/widgets/widgets.dart';
import 'package:intl/intl.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
    required this.currencyFormat,
    required this.index,
    this.onDelete,
  });

  final Transaction transaction;
  final CurrencyFormat currencyFormat;
  final int index;
  final void Function(Transaction transaction)? onDelete;

  @override
  Widget build(BuildContext context) {
    final date = DateTime.fromMillisecondsSinceEpoch(transaction.time);
    final jalali = Jalali.fromDateTime(date);
    final dateText = jalali.formatCompactDate();
    final timeText = DateFormat.Hm().format(date);

    final amoutFormatter = CurrencyInputFormatter.format(
      transaction.amount,
      format: currencyFormat,
    );

    return ListTile(
      leading: CircleAvatar(
        child: Text('$index'),
      ),
      title: BlocSelector<AppBloc, AppState, CurrencyFormat>(
        selector: (state) => state.currencyFormat,
        builder: (context, currency) {
          return Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: transaction.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          );
        },
      ),
      subtitle: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$amoutFormatter\n',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: transaction.type.color,
                  ),
            ),
            TextSpan(
              text: '${transaction.place.value?.name}',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            TextSpan(
              text: ', $dateText - $timeText',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
      trailing: IconButton(
        onPressed: () async {
          await showConfirmDialog(
            context,
            title: 'Are want delete ${transaction.title}?',
            confirmText: 'Delete',
            onConfirm: () {
              onDelete?.call(transaction);
            },
          );
        },
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
    );
  }
}
