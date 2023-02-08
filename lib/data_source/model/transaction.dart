// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:inex/data_source/model/place.dart';
import 'package:isar/isar.dart';

part 'transaction.g.dart';

@CopyWith()
@Collection(ignore: {'props'})
class Transaction with EquatableMixin {
  Transaction({
    required this.id,
    required this.time,
    required this.amount,
    required this.title,
    this.description = '',
    required this.type,
  });

  final Id id;

  final int time;
  final int amount;
  final String title;
  final String description;

  @enumerated
  final TransactionType type;

  final place = IsarLink<Place>();

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'] as int,
      time: json['time'] as int,
      amount: json['amount'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      type: TransactionType.values
          .firstWhere((element) => element.name == json['type']),
    )..place.value = Place.fromJson(json['place'] as Map<String, dynamic>);
  }

  Map<String, dynamic> toJson() => {
        'time': time,
        'amount': amount,
        'title': title,
        'description': description,
        'type': type.name,
        'id': id,
        'place': place.value?.toJson()
      };

  @override
  List<Object> get props {
    return [time, amount, title, description, type];
  }
}

enum TransactionType { income, expenses }
