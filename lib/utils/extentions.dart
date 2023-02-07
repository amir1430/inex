import 'package:flutter/material.dart';
import 'package:inex/data_source/model/transaction.dart';

extension TransactionTypeX on TransactionType {
  Color get color {
    switch (this) {
      case TransactionType.income:
        return Colors.green;
      case TransactionType.expenses:
        return Colors.red;
    }
  }
}
