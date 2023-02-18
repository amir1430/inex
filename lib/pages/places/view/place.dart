import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inex/pages/app/bloc/app_bloc.dart';
import 'package:inex/pages/places/place_bloc/place_bloc.dart';
import 'package:inex/pages/transactions/transactions.dart';
import 'package:inex/sl.dart';
import 'package:inex/utils/currency_format.dart';
import 'package:inex/utils/utils.dart';
import 'package:inex/widgets/widgets.dart';
import 'package:intl/intl.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class PlaceView extends StatelessWidget {
  const PlaceView({
    super.key,
    required this.name,
    required this.placeId,
  });

  final int placeId;
  final String name;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlaceBloc>(
      create: (context) => sl()..add(PlaceEvent.started(placeId: placeId)),
      child: _PlaceView(
        name: name,
        placeId: placeId,
      ),
    );
  }
}

class _PlaceView extends StatelessWidget {
  const _PlaceView({
    required this.placeId,
    required this.name,
  });

  final int placeId;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          ...ViewType.values.map((type) {
            return BlocBuilder<PlaceBloc, PlaceState>(
              builder: (context, state) {
                return IconButton(
                  onPressed: () {
                    context
                        .read<PlaceBloc>()
                        .add(PlaceEvent.changeViewType(type));
                  },
                  icon: Icon(
                    type.icon,
                    color: state.viewType == type
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(.5),
                  ),
                );
              },
            );
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_card),
        onPressed: () async {
          await context.showModal(
            child: AddTransactionView(
              placeId: placeId,
            ),
          );
        },
      ),
      body: BlocBuilder<PlaceBloc, PlaceState>(
        builder: (context, state) {
          switch (state.status) {
            case PlaceStatus.initial:
              return const SizedBox.shrink();
            case PlaceStatus.inProgress:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case PlaceStatus.failure:
              return Center(
                child: Text(state.errorMessage!),
              );
            case PlaceStatus.success:
              return Column(
                children: [
                  BlocSelector<AppBloc, AppState, CurrencyFormat>(
                    selector: (state) => state.currencyFormat,
                    builder: (context, currency) {
                      return ExInDiffWidget(
                        totalIncome: state.transactions.totalIncome,
                        totalExpenses: state.transactions.totalExpenses,
                        diff: state.transactions.totalIncome -
                            state.transactions.totalExpenses,
                        currencyFormat: currency,
                      );
                    },
                  ),
                  Expanded(
                    child: _Place(placeId: placeId, name: name),
                  ),
                ],
              );
          }
        },
      ),
    );
  }
}

class _Place extends StatelessWidget {
  const _Place({
    required this.placeId,
    required this.name,
  });

  final int placeId;
  final String name;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceBloc, PlaceState>(
      builder: (context, state) {
        switch (state.viewType) {
          case ViewType.grid:
            return GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
              ),
              itemCount: state.transactions.length,
              itemBuilder: (BuildContext context, int index) {
                final data = [...state.transactions.entries][index];
                final dateTime = DateFormat.yMd().parse(data.key);
                final j = Jalali.fromDateTime(dateTime);

                return Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 2,
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(
                        'tessst',
                        params: {
                          'date': data.key,
                          'id': placeId.toString(),
                          'name': name
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          j.day.toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text('${j.year} - ${j.monthName}'),
                        Text('Transactions: ${data.value.length}'),
                      ],
                    ),
                  ),
                );
              },
            );
          case ViewType.list:
            return BlocSelector<AppBloc, AppState, CurrencyFormat>(
              selector: (state) => state.currencyFormat,
              builder: (context, currency) {
                return ListView.builder(
                  itemCount: state.transactionsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TransactionTile(
                      transaction: state.transactionsList[index],
                      index: index + 1,
                      currencyFormat: currency,
                      onDelete: (transaction) {
                        context
                            .read<TransactionsBloc>()
                            .add(TransactionsEvent.delete(transaction));
                      },
                    );
                  },
                );
              },
            );
        }
      },
    );
  }
}
