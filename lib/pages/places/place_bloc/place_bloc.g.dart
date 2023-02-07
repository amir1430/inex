// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceState _$$_PlaceStateFromJson(Map<String, dynamic> json) =>
    _$_PlaceState(
      status: $enumDecodeNullable(_$PlaceStatusEnumMap, json['status']) ??
          PlaceStatus.initial,
      transactions: (json['transactions'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const {},
      transactionsList: (json['transactionsList'] as List<dynamic>?)
              ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      viewType: $enumDecodeNullable(_$ViewTypeEnumMap, json['viewType']) ??
          ViewType.grid,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_PlaceStateToJson(_$_PlaceState instance) =>
    <String, dynamic>{
      'status': _$PlaceStatusEnumMap[instance.status]!,
      'transactions': instance.transactions,
      'transactionsList': instance.transactionsList,
      'viewType': _$ViewTypeEnumMap[instance.viewType]!,
      'errorMessage': instance.errorMessage,
    };

const _$PlaceStatusEnumMap = {
  PlaceStatus.initial: 'initial',
  PlaceStatus.inProgress: 'inProgress',
  PlaceStatus.failure: 'failure',
  PlaceStatus.success: 'success',
};

const _$ViewTypeEnumMap = {
  ViewType.grid: 'grid',
  ViewType.list: 'list',
};
