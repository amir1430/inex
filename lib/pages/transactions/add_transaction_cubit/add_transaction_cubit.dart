import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inex/data_form/data_form.dart';
import 'package:inex/data_source/data_source.dart';
import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/exceptions/exceptions.dart';
import 'package:intl/intl.dart';
part 'add_transaction_state.dart';
part 'add_transaction_cubit.freezed.dart';

class AddTransactionCubit extends Cubit<AddTransactionState> {
  AddTransactionCubit({
    required this.dataSource,
    required this.placeId,
    String? date,
  }) : super(
          AddTransactionState(
            placeId: placeId,
            date: date != null ? DateFormat.yMd().parse(date) : DateTime.now(),
            timeOfDay: TimeOfDay.now(),
          ),
        );

  final IDataSource dataSource;
  final int placeId;

  Future<void> add() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final place = await dataSource.place(id: placeId);

      if (place == null) {
        throw const InexException(message: 'invalid place');
      }

      await dataSource.addtransaction(
        transaction: Transaction(
          id: DateTime.now().microsecondsSinceEpoch,
          time: convertDateTimeToUnix(date: state.date, time: state.timeOfDay),
          amount: state.amount,
          title: state.nameForm.value,
          description: state.descriptionForm.value,
          type: state.transactionType,
        ),
        place: place,
      );
      emit(
        state.copyWith(status: FormzStatus.submissionSuccess),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void changeName(String value) {
    final newName = NameForm.dirty(value);
    emit(
      state.copyWith(
        nameForm: newName,
        status: Formz.validate([newName, state.descriptionForm]),
      ),
    );
  }

  void changeDate(DateTime date) {
    emit(
      state.copyWith(
        date: date,
      ),
    );
  }

  void changeTime(TimeOfDay time) {
    emit(
      state.copyWith(
        timeOfDay: time,
      ),
    );
  }

  void changeDescription(String value) {
    final newDescription = DescriptionForm.dirty(value);
    emit(
      state.copyWith(
        descriptionForm: newDescription,
        status: Formz.validate([newDescription, state.nameForm]),
      ),
    );
  }

  void changeType(TransactionType type) {
    emit(state.copyWith(transactionType: type));
  }

  void changeAmout(int amount) {
    emit(state.copyWith(amount: amount));
  }
}

int convertDateTimeToUnix({
  required DateTime date,
  required TimeOfDay time,
}) {
  final hour = time.hour;
  final minute = time.minute;

  final seconds = (hour * 60 * 60) + (minute * 60);

  return date.copyWith(hour: 0, minute: 0, second: 0).millisecondsSinceEpoch +
      (seconds * 1000);
}
