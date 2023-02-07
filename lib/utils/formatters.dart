import 'package:flutter/services.dart';
import 'package:inex/utils/currency_format.dart';
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  CurrencyInputFormatter({
    required this.maxDigits,
    required this.currencyFormat,
  });
  final int maxDigits;
  final CurrencyFormat currencyFormat;

  static String format(dynamic value, {required CurrencyFormat format}) {
    final formatter = NumberFormat(format.formatter);
    return formatter.format(value);
  }

  static double? toDigits(String value) =>
      double.tryParse(value.replaceAll(RegExp('[^0-9]'), ''));

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    if (newValue.selection.baseOffset > maxDigits) {
      return oldValue;
    }

    final value = double.parse(newValue.text);

    final newText = format(value, format: currencyFormat);
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
