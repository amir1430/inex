part of 'add_transaction_cubit.dart';

@freezed
class AddTransactionState with _$AddTransactionState {
  const factory AddTransactionState({
    required int placeId,
    @Default(0) int amount,
    @Default(NameForm.pure()) NameForm nameForm,
    @Default(DescriptionForm.pure()) DescriptionForm descriptionForm,
    @Default(TransactionType.expenses) TransactionType transactionType,
    @Default(FormzStatus.pure) FormzStatus status,
    required DateTime date,
    required TimeOfDay timeOfDay,
    String? errorMessage,
  }) = _AddTransactionState;
}
