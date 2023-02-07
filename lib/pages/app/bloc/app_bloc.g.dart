// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      isThemeDark: json['isThemeDark'] as bool? ?? false,
      currencyFormat: $enumDecodeNullable(
              _$CurrencyFormatEnumMap, json['currencyFormat']) ??
          CurrencyFormat.iranRial,
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'isThemeDark': instance.isThemeDark,
      'currencyFormat': _$CurrencyFormatEnumMap[instance.currencyFormat]!,
    };

const _$CurrencyFormatEnumMap = {
  CurrencyFormat.iranRial: 'fa-ir',
};
