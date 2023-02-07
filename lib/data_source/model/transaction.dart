// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inex/data_source/model/place.dart';
import 'package:isar/isar.dart';

part 'transaction.g.dart';

@JsonSerializable()
@CopyWith()
@Collection(ignore: {'props'})
class Transaction with EquatableMixin {
  Transaction({
    required this.time,
    required this.amount,
    required this.title,
    this.description = '',
    required this.type,
  }) : id = Isar.autoIncrement;

  Id id;

  final int time;
  final int amount;
  final String title;
  final String description;

  @enumerated
  final TransactionType type;

  final place = IsarLink<Place>();

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  List<Object?> get props => [time, amount, title, description, type];
}

enum TransactionType { income, expenses }
