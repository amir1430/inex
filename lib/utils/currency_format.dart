import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'local')
enum CurrencyFormat {
  iranRial(
    name: 'Iranian rial',
    formatter: 'ریال #,##0',
    symbol: 'ریال',
    local: 'fa-ir',
  );

  const CurrencyFormat({
    required this.name,
    required this.formatter,
    required this.symbol,
    required this.local,
  });

  final String formatter;
  final String symbol;
  final String local;
  final String name;
}
