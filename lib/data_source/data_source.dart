// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:inex/data_source/model/place.dart';
import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/exceptions/exceptions.dart';
import 'package:isar/isar.dart';

export 'io_data_source.dart';

abstract class IDataSource {
  Future<int> addPlace(Place place);
  Future<bool> deletePlace(int id);
  Future<List<Place>> places();
  Stream<List<Place>> get placesStream;
  Future<Place?> place({String? name, int? id});

  Future<int> addtransaction({
    required Transaction transaction,
    required Place place,
  });
  Stream<List<Transaction>> transactionsStream({int? placeId});
  Future<List<Transaction>> transactions({
    int? placeId,
    int? from,
    int? to,
    TransactionType? type,
  });
  Future<Transaction?> transaction({
    int? placeId,
    int? id,
    String? title,
  });
  Future<bool> deleteTransaction(int id);
  Future<ImportingStatusCounter> import(Map<String, dynamic> json);
  Future<Map<String, dynamic>> export();
}

class IsarDataSource implements IDataSource {
  IsarDataSource({required this.isar});

  final Isar isar;

  @override
  Future<int> addPlace(Place place) async {
    try {
      return isar.writeTxn(() => isar.places.put(place));
    } catch (e) {
      if (e is IsarError) {
        throw Exception(e.message);
      }
      throw Exception('$e');
    }
  }

  @override
  Future<bool> deletePlace(int id) async {
    final haveDepenendy = await transactions(placeId: id);

    if (haveDepenendy.isNotEmpty) {
      throw const DataSourceHaveDependencyException();
    }

    return isar.writeTxn(() => isar.places.delete(id));
  }

  @override
  Future<List<Place>> places() async {
    return isar.places.where().sortByEditedAtDesc().findAll();
  }

  @override
  Stream<List<Place>> get placesStream {
    return isar.places
        .where()
        .sortByEditedAtDesc()
        .watch(fireImmediately: true);
  }

  @override
  Future<Place?> place({
    String? name,
    int? id,
  }) {
    return isar.places
        .filter()
        .optional(name != null, (q) => q.nameEqualTo(name!))
        .or()
        .optional(id != null, (q) => q.idEqualTo(id!))
        .findFirst();
  }

  @override
  Future<int> addtransaction({
    required Transaction transaction,
    required Place place,
  }) =>
      isar.writeTxn(() async {
        final id = await isar.transactions.put(
          transaction..place.value = place,
        );
        await transaction.place.save();
        return id;
      });

  @override
  Future<List<Transaction>> transactions({
    int? placeId,
    int? from,
    int? to,
    TransactionType? type,
  }) {
    return isar.transactions
        .filter()
        .place((q) {
          return q.optional(placeId != null, (q) => q.idEqualTo(placeId!));
        })
        .or()
        .optional(from != null, (q) => q.timeGreaterThan(from!))
        .or()
        .optional(to != null, (q) => q.timeLessThan(to!))
        .or()
        .optional(type != null, (q) => q.typeEqualTo(type!))
        .sortByTimeDesc()
        .findAll();
  }

  @override
  Future<Transaction?> transaction({
    int? placeId,
    String? title,
    int? id,
  }) async {
    return isar.transactions
        .filter()
        .place((q) {
          return q.optional(placeId != null, (q) => q.idEqualTo(placeId!));
        })
        .optional(title != null, (q) => q.titleEqualTo(title!))
        .or()
        .optional(id != null, (q) => q.idEqualTo(id!))
        .findFirst();
  }

  @override
  Stream<List<Transaction>> transactionsStream({int? placeId}) {
    return isar.transactions
        .filter()
        .place((q) => q.optional(placeId != null, (q) => q.idEqualTo(placeId!)))
        .sortByTimeDesc()
        .watch(fireImmediately: true);
  }

  @override
  Future<bool> deleteTransaction(int id) =>
      isar.writeTxn(() => isar.transactions.delete(id));

  @override
  Future<Map<String, dynamic>> export() async {
    final places = await isar.places.where().findAll();
    final transactions = await this.transactions();

    final placesJson = [...places.map((place) => place.toJson())];
    final transactionsJson = [...transactions.map((place) => place.toJson())];

    return {'places': placesJson, 'transactions': transactionsJson};
  }

  @override
  Future<ImportingStatusCounter> import(Map<String, dynamic> json) async {
    late final List<dynamic> placesJson;
    late final List<dynamic> transactionsJson;
    try {
      placesJson = json['places'] as List<dynamic>;
      transactionsJson = json['transactions'] as List<dynamic>;
    } catch (e) {
      throw const ReadingJsonException();
    }

    var counter = ImportingStatusCounter(
      transactionsTotalCount: transactionsJson.length,
      placesTotalCount: placesJson.length,
    );

    final places = placesJson
        .map(
          (e) {
            try {
              return Place.fromJson(e as Map<String, dynamic>);
            } catch (e) {
              return null;
            }
          },
        )
        .whereType<Place>()
        .toList();

    final transactions = transactionsJson
        .map(
          (e) {
            try {
              return Transaction.fromJson(e as Map<String, dynamic>);
            } catch (e) {
              return null;
            }
          },
        )
        .whereType<Transaction>()
        .toList();

    await isar.writeTxn<void>(() async {
      for (final place in places) {
        await isar.places.put(place);
        counter = counter.copyWith(
          placesSuccessCount: counter.placesSuccessCount + 1,
        );
      }
    });

    await isar.writeTxn<void>(
      () async {
        for (final trx in transactions) {
          if (trx.place.value != null &&
              await place(id: trx.place.value!.id) != null) {
            if (await transaction(id: trx.id) == null) {
              await isar.transactions.put(trx);
              await trx.place.save();

              counter = counter.copyWith(
                transactionsSuccessCount: counter.transactionsSuccessCount + 1,
              );
            }
          }
        }
      },
    );

    return counter;
  }
}

class ImportingStatusCounter extends Equatable {
  const ImportingStatusCounter({
    this.placesTotalCount = 0,
    this.placesSuccessCount = 0,
    this.transactionsTotalCount = 0,
    this.transactionsSuccessCount = 0,
  });

  final int transactionsTotalCount;
  final int transactionsSuccessCount;
  final int placesTotalCount;

  final int placesSuccessCount;

  ImportingStatusCounter copyWith({
    int? transactionsTotalCount,
    int? transactionsSuccessCount,
    int? placesTotalCount,
    int? placesSuccessCount,
  }) {
    return ImportingStatusCounter(
      transactionsTotalCount:
          transactionsTotalCount ?? this.transactionsTotalCount,
      transactionsSuccessCount:
          transactionsSuccessCount ?? this.transactionsSuccessCount,
      placesTotalCount: placesTotalCount ?? this.placesTotalCount,
      placesSuccessCount: placesSuccessCount ?? this.placesSuccessCount,
    );
  }

  @override
  List<Object> get props => [
        transactionsTotalCount,
        transactionsSuccessCount,
        placesTotalCount,
        placesSuccessCount
      ];
}
