import 'package:get_it/get_it.dart';
import 'package:inex/data_source/data_source.dart';
import 'package:inex/data_source/model/place.dart';
import 'package:inex/data_source/model/transaction.dart';
import 'package:inex/pages/app/app.dart';
import 'package:inex/pages/places/place_bloc/place_bloc.dart';
import 'package:inex/pages/places/places.dart';
import 'package:inex/pages/transactions/transactions.dart';
import 'package:isar/isar.dart';

final sl = GetIt.I;

Future<void> initSl() async {
  sl
    ..registerSingleton<Isar>(
      await Isar.open([PlaceSchema, TransactionSchema]),
    )
    ..registerSingleton<IIoDataSource>(IoDataSourceImpl())
    ..registerSingleton<IDataSource>(IsarDataSource(isar: sl()))
    ..registerFactory<PlacesBloc>(() => PlacesBloc(sl()))
    ..registerFactory<PlaceBloc>(() => PlaceBloc(sl()))
    ..registerFactory<AppBloc>(
      () => AppBloc(dataSource: sl(), ioDataSource: sl()),
    )
    ..registerFactory<TransactionsBloc>(
      () => TransactionsBloc(dataSource: sl()),
    )
    ..registerFactoryParam<AddPlaceCubit, Place?, void>(
      (place, _) => AddPlaceCubit(dataSource: sl(), place: place),
    )
    ..registerFactoryParam<AddTransactionCubit, int, String?>(
      (id, date) =>
          AddTransactionCubit(dataSource: sl(), placeId: id, date: date),
    );
}
