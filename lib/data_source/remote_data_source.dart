import 'dart:async';

import 'package:inex/data_source/model/model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class IRemoteDataSource {
  Stream<List<Place>> placesStream({required String userUid});
  Stream<List<Transaction>> transactionsStream({required String userUid});

  Future<List<Transaction>> transactions({required String userUid});
  Future<List<Place>> places({required String userUid});

  Future<void> insertPlace({
    required String userUid,
    required Place place,
  });
  Future<void> updatePlace({
    required String userUid,
    required Place place,
  });
  Future<void> deletePlace({
    required String userUid,
    required int placeId,
  });

  Future<void> insertTransaction({
    required String userUid,
    required Transaction transaction,
  });
  Future<void> deleteTransaction({
    required String userUid,
    required Transaction transaction,
  });
  Future<void> updateTransaction({
    required String userUid,
    required Transaction transaction,
  });
}

class SupaBaseDataSource implements IRemoteDataSource {
  const SupaBaseDataSource(this.supabase);

  final Supabase supabase;

  SupabaseQueryBuilder get _placesQuery => supabase.client.from('places');
  SupabaseQueryBuilder get _transactionQuery =>
      supabase.client.from('transactions');

  @override
  Stream<List<Place>> placesStream({
    required String userUid,
  }) {
    return _placesQuery
        .stream(primaryKey: ['id', 'user_id'])
        .eq('user_id', userUid)
        .transform(_supabaseListToListPlaces);
  }

  @override
  Stream<List<Transaction>> transactionsStream({
    required String userUid,
  }) {
    return _transactionQuery
        .stream(primaryKey: ['id', 'user_id', 'place_id'])
        .eq('user_id', userUid)
        .transform(_supabaseListToListTransaction);
  }

  @override
  Future<List<Place>> places({
    required String userUid,
  }) async {
    try {
      final data =
          await _placesQuery.select<PostgrestList>().eq('user_id', userUid);
      return [...data.map(Place.fromJson)];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Transaction>> transactions({
    required String userUid,
  }) async {
    try {
      final data = await _transactionQuery
          .select<PostgrestList>(
              'id,place_id,user_id,time,amount,title,description,type, '
              'places(id,user_id,name,description,created_at,edited_at)')
          .eq('user_id', userUid);
      return [
        ...data
            .map(
              (e) => {...e, 'place': e['places']},
            )
            .map(Transaction.fromJson)
      ];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deletePlace({
    required String userUid,
    required int placeId,
  }) async {
    await _placesQuery.delete().eq('user_id', userUid).eq('id', placeId);
  }

  @override
  Future<void> insertPlace({
    required String userUid,
    required Place place,
  }) async {
    try {
      await _placesQuery.upsert(
        {...place.toJson(), 'user_id': userUid},
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updatePlace({
    required String userUid,
    required Place place,
  }) async {
    try {
      await _placesQuery
          .update(
            {...place.toJson(), 'place_id': place.id, 'user_id': userUid},
          )
          .eq('place_id', place.id)
          .eq('user_id', place.id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> insertTransaction({
    required String userUid,
    required Transaction transaction,
  }) async {
    assert(transaction.place.value != null, 'Place must not null');

    try {
      await _transactionQuery.upsert({
        ...transaction.toJson(),
        'user_id': userUid,
        'place_id': transaction.place.value!.id,
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateTransaction({
    required String userUid,
    required Transaction transaction,
  }) async {
    assert(transaction.place.value != null, 'Place must not null');

    await _transactionQuery
        .update({
          ...transaction.toJson(),
        })
        .eq('user_id', userUid)
        .eq('place_id', transaction.place.value!.id)
        .eq('id', transaction.id);
  }

  @override
  Future<void> deleteTransaction({
    required String userUid,
    required Transaction transaction,
  }) async {
    assert(transaction.place.value != null, 'Place must not null');

    await _transactionQuery
        .delete()
        .eq('user_id', userUid)
        .eq('place_id', transaction.place.value!.id)
        .eq('id', transaction.id);
  }

  StreamTransformer<List<Map<String, dynamic>>, List<Place>>
      get _supabaseListToListPlaces {
    return StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add([...data.map(Place.fromJson)]);
      },
    );
  }

  StreamTransformer<List<Map<String, dynamic>>, List<Transaction>>
      get _supabaseListToListTransaction {
    return StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add([...data.map(Transaction.fromJson)]);
      },
    );
  }
}
