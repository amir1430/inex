// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

import 'package:inex/data_form/data_form.dart';
import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/pages/app/app.dart';
import 'package:inex/pages/transactions/transactions.dart';
import 'package:inex/sl.dart';
import 'package:inex/utils/currency_format.dart';
import 'package:inex/utils/utils.dart';
import 'package:intl/intl.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class AddTransactionView extends StatelessWidget {
  const AddTransactionView({
    super.key,
    required this.placeId,
    this.initialDate,
  });

  final String? initialDate;
  final int placeId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddTransactionCubit>(
      create: (context) => sl.get(param1: placeId, param2: initialDate),
      child: BlocListener<AddTransactionCubit, AddTransactionState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == FormzStatus.submissionSuccess) {
            context.pop();
          }
        },
        child: _AddTransaction(initialDate: initialDate),
      ),
    );
  }
}

class _AddTransaction extends StatelessWidget {
  const _AddTransaction({this.initialDate});

  final String? initialDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<AddTransactionCubit, AddTransactionState>(
            buildWhen: (previous, current) =>
                previous.nameForm != current.nameForm,
            builder: (context, state) {
              return TextFormField(
                initialValue: state.nameForm.value,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Name',
                  errorText: state.nameForm.invalid
                      ? NameFormError.invalid.text
                      : null,
                ),
                onChanged: context.read<AddTransactionCubit>().changeName,
              );
            },
          ),
          const SizedBox(height: 12),
          BlocBuilder<AddTransactionCubit, AddTransactionState>(
            buildWhen: (previous, current) =>
                previous.descriptionForm != current.descriptionForm,
            builder: (context, state) {
              return TextFormField(
                initialValue: state.descriptionForm.value,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Description',
                  errorText: state.descriptionForm.invalid
                      ? DescriptionFormError.invalid.text
                      : null,
                ),
                onChanged:
                    context.read<AddTransactionCubit>().changeDescription,
              );
            },
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: BlocBuilder<AddTransactionCubit, AddTransactionState>(
                  buildWhen: (previous, current) =>
                      previous.amount != current.amount,
                  builder: (context, state) {
                    return BlocSelector<AppBloc, AppState, CurrencyFormat>(
                      selector: (state) => state.currencyFormat,
                      builder: (context, currency) {
                        return TextFormField(
                          // initialValue: state.amount.toString(),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            // FilteringTextInputFormatter.allow(
                            //   r'^(\d+)?\.?\d{0,2}',
                            // ),
                            CurrencyInputFormatter(
                              maxDigits: 12,
                              currencyFormat: currency,
                            ),
                          ],
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Amount',
                          ),
                          onChanged: (v) {
                            final amount =
                                CurrencyInputFormatter.toDigits(v)?.toInt();
                            context.read<AddTransactionCubit>().changeAmout(
                                  amount ?? 0,
                                );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(width: 12),
              BlocBuilder<AddTransactionCubit, AddTransactionState>(
                buildWhen: (previous, current) =>
                    previous.transactionType != current.transactionType,
                builder: (context, state) {
                  return Switch(
                    value: state.transactionType.isIncome,
                    activeColor: state.transactionType.color,
                    inactiveThumbColor: state.transactionType.color,
                    onChanged: (value) {
                      context.read<AddTransactionCubit>().changeType(
                            !value
                                ? TransactionType.expenses
                                : TransactionType.income,
                          );
                    },
                  );
                },
              ),
              const SizedBox(width: 12),
              BlocBuilder<AddTransactionCubit, AddTransactionState>(
                buildWhen: (previous, current) => previous.date != current.date,
                builder: (context, state) {
                  final date =
                      Jalali.fromDateTime(state.date).formatCompactDate();

                  final firstDate = Jalali.fromDateTime(
                    DateTime.now().subtract(const Duration(days: 260)),
                  );

                  final now = initialDate == null
                      ? Jalali.now()
                      : Jalali.fromDateTime(
                          DateFormat.yMd().parse(initialDate!),
                        );

                  return Tooltip(
                    message: date,
                    child: IconButton(
                      icon: const Icon(Icons.date_range_outlined),
                      onPressed: () async {
                        await showPersianDatePicker(
                          context: context,
                          initialDate: now,
                          firstDate: initialDate == null ? firstDate : now,
                          lastDate: initialDate == null ? Jalali.now() : now,
                        ).then((value) {
                          if (value != null) {
                            context
                                .read<AddTransactionCubit>()
                                .changeDate(value.toDateTime());
                          }
                        });
                      },
                    ),
                  );
                },
              ),
              const SizedBox(width: 12),
              BlocBuilder<AddTransactionCubit, AddTransactionState>(
                buildWhen: (previous, current) =>
                    previous.timeOfDay != current.timeOfDay,
                builder: (context, state) {
                  return Tooltip(
                    message: state.timeOfDay.format(context),
                    child: IconButton(
                      icon: const Icon(Icons.timer_outlined),
                      onPressed: () async {
                        await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        ).then((value) {
                          if (value != null) {
                            context
                                .read<AddTransactionCubit>()
                                .changeTime(value);
                          }
                        });
                      },
                    ),
                  );
                },
              )
            ],
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: BlocBuilder<AddTransactionCubit, AddTransactionState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                return OutlinedButton(
                  onPressed: state.status.isValid
                      ? () {
                          context.read<AddTransactionCubit>().add();
                        }
                      : null,
                  child: const Text('Add Transaction'),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

extension on TransactionType {
  bool get isIncome {
    switch (this) {
      case TransactionType.income:
        return true;
      case TransactionType.expenses:
        return false;
    }
  }
}
