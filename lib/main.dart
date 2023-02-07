import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:inex/pages/app/app.dart';
import 'package:inex/pages/places/places.dart';
import 'package:inex/pages/transactions/transactions_bloc/transactions_bloc.dart';
import 'package:inex/router.dart';
import 'package:inex/sl.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  EquatableConfig.stringify = true;
  await initSl();

  runApp(_App());
}

class _App extends StatelessWidget {
  _App();

  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PlacesBloc>(
          create: (context) => sl()..add(const PlacesEvent.started()),
        ),
        BlocProvider<AppBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<TransactionsBloc>(
          create: (context) => sl()..add(const TransactionsEvent.started()),
        )
      ],
      child: _MatApp(router),
    );
  }
}

class _MatApp extends StatelessWidget {
  const _MatApp(this.router);

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppBloc, AppState, bool>(
      selector: (state) => state.isThemeDark,
      builder: (context, isDark) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            brightness: isDark ? Brightness.dark : Brightness.light,
          ),
          routerConfig: router.router,
        );
      },
    );
  }
}
