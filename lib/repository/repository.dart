import 'dart:async';
import 'dart:developer';

import 'package:inex/data_source/data_source.dart';
import 'package:inex/data_source/model/model.dart';
import 'package:inex/data_source/remote_data_source.dart';
import 'package:rxdart/subjects.dart';

enum SyncingStatus { initial, inProgress, failure, done }

class Repository {
  Repository({
    required this.authenticationDataSource,
    required this.remoteDataSource,
    required this.localDataSource,
  }) {
    _syncingStatusController = BehaviorSubject();

    _authSubscription = authenticationDataSource.authStatus().listen(
      (event) async {
        await event.whenOrNull(
          authenticated: (user) async {
            _syncingStatusController.sink.add(SyncingStatus.inProgress);

            try {
              final remotePlaces = await remoteDataSource.places(
                userUid: user.uuid,
              );
              final remoteTransactions = await remoteDataSource.transactions(
                userUid: user.uuid,
              );

              final localPlaces = await localDataSource.places();
              final localTransactions = await localDataSource.transactions();

              final remotePlacesDiff = remotePlaces.diif(localPlaces);
              final localPlacesDiff = localPlaces.diif(remotePlaces);

              final remoteTransactionsDiff =
                  remoteTransactions.diif(localTransactions);
              final localTransactionsDiff =
                  localTransactions.diif(remoteTransactions);

              await localDataSource.addPlaces(remotePlacesDiff);
              await localDataSource.addtransactions(remoteTransactionsDiff);

              for (final place in localPlacesDiff) {
                await remoteDataSource.insertPlace(
                  userUid: user.uuid,
                  place: place,
                );
              }

              for (final trx in localTransactionsDiff) {
                await remoteDataSource.insertTransaction(
                  userUid: user.uuid,
                  transaction: trx,
                );
              }

              _syncingStatusController.sink.add(SyncingStatus.done);
            } catch (e) {
              log(e.toString());
              _syncingStatusController.sink.add(SyncingStatus.failure);
            }

            placesSubscription =
                remoteDataSource.placesStream(userUid: user.uuid).listen(
              (places) async {
                final localPlaces = await localDataSource.places();
                final localDiff = localPlaces.diif(places);
                for (final place in localDiff) {
                  try {
                    await localDataSource.deletePlace(place.id);
                  } catch (e) {
                    continue;
                  }
                }

                await localDataSource
                    .addPlaces(places.diif(await localDataSource.places()));
              },
            );

            transactionsSubscription =
                remoteDataSource.transactionsStream(userUid: user.uuid).listen(
              (transactions) async {
                final localTrx = await localDataSource.transactions();
                final localDiff = localTrx.diif(transactions);
                for (final trx in localDiff) {
                  try {
                    await localDataSource.deleteTransaction(trx.id);
                  } catch (e) {
                    continue;
                  }
                }

                await localDataSource.addtransactions(
                  transactions.diif(await localDataSource.transactions()),
                );
              },
            );
          },
          unAuthenticated: () async {
            _syncingStatusController.sink.add(SyncingStatus.initial);

            await localDataSource.clear();

            await transactionsSubscription?.cancel();
            await placesSubscription?.cancel();
          },
        );
      },
    );
  }

  late final StreamSubscription<AuthenticationStatus> _authSubscription;

  late final StreamController<SyncingStatus> _syncingStatusController;

  StreamSubscription<List<Place>>? placesSubscription;
  StreamSubscription<List<Transaction>>? transactionsSubscription;

  final AuthenticationDataSource authenticationDataSource;
  final IRemoteDataSource remoteDataSource;
  final IDataSource localDataSource;

  InexUser? get currentUser => authenticationDataSource.currentUser;

  Stream<SyncingStatus> get syncingStatus => _syncingStatusController.stream;

  Stream<List<Transaction>> transactionsStream({int? id}) =>
      localDataSource.transactionsStream(placeId: id);

  Stream<List<Place>> get placesStream => localDataSource.placesStream;

  Future<void> addPlace({required Place place}) async {
    try {
      await localDataSource.addPlace(place);
      if (currentUser != null) {
        await remoteDataSource.insertPlace(
          userUid: currentUser!.uuid,
          place: place,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addTransaction({
    required Transaction transaction,
    required Place place,
  }) async {
    try {
      await localDataSource.addtransaction(
        transaction: transaction,
        place: place,
      );
      if (currentUser != null) {
        await remoteDataSource.insertTransaction(
          userUid: currentUser!.uuid,
          transaction: transaction,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deletePlace({required int id}) async {
    try {
      await localDataSource.deletePlace(id);
      if (currentUser != null) {
        await remoteDataSource.deletePlace(
          userUid: currentUser!.uuid,
          placeId: id,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTransaction({required Transaction transaction}) async {
    try {
      await localDataSource.deleteTransaction(transaction.id);
      if (currentUser != null) {
        await remoteDataSource.deleteTransaction(
          userUid: currentUser!.uuid,
          transaction: transaction,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Place?> getLocalPlace({required int id}) async {
    return localDataSource.place(id: id);
  }

  Future<void> dispose() async {
    await _authSubscription.cancel();
    await _syncingStatusController.close();
  }
}

extension Diff<T> on List<T> {
  List<T> diif(List<T> right) {
    return [...where((element) => !right.contains(element))];
  }
}
