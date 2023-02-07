import 'package:inex/data_source/model/place.dart';
import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/exceptions/exceptions.dart';
import 'package:isar/isar.dart';

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
  Future<bool> deleteTransaction(int id);
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
  Future<Place?> place({String? name, int? id}) {
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
        .optional(from != null, (q) => q.timeGreaterThan(from!))
        .optional(to != null, (q) => q.timeLessThan(to!))
        .optional(type != null, (q) => q.typeEqualTo(type!))
        .sortByTimeDesc()
        .findAll();
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
}
