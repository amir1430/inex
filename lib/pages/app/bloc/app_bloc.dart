import 'dart:convert';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:inex/data_source/data_source.dart';
import 'package:inex/exceptions/exceptions.dart';
import 'package:inex/repository/repository.dart';
import 'package:inex/utils/currency_format.dart';
import 'package:inex/utils/time.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> {
  AppBloc({
    required this.dataSource,
    required this.ioDataSource,
    required this.authenticationDataSource,
    required this.repository,
  }) : super(const AppState()) {
    on<_Started>(_onStarted);
    on<_Syncing>(_onSyncing);
    on<_SignOut>(_onSignOut);
    on<_Share>(_onShare);
    on<_Import>(_onImport);
    on<_Export>(_onExport);
    on<_ChangeTheme>(_onChangeTheme);
    on<_ChangeCurrenyFormat>(_onChangeCurrenyFormat);
  }

  final Repository repository;

  final IDataSource dataSource;
  final IIoDataSource ioDataSource;
  final AuthenticationDataSource authenticationDataSource;

  Future<void> _onStarted(
    _Started event,
    Emitter<AppState> emit,
  ) async {
    await emit.forEach(
      authenticationDataSource.authStatus(),
      onData: (status) {
        status.whenOrNull(
          authenticated: (user) {
            add(_Syncing(userUid: user.uuid));
          },
        );
        return state.copyWith(authenticationStatus: status);
      },
    );
  }

  Future<void> _onSignOut(
    _SignOut event,
    Emitter<AppState> emit,
  ) async {
    await authenticationDataSource.logOut();
  }

  Future<void> _onSyncing(
    _Syncing event,
    Emitter<AppState> emit,
  ) async {
    await emit.forEach(
      repository.syncingStatus,
      onData: (data) {
        return state.copyWith(syncingStatus: data);
      },
    );
  }

  Future<void> _onShare(
    _Share event,
    Emitter<AppState> emit,
  ) async {
    try {
      final path = await getApplicationDocumentsDirectory();
      final data = await dataSource.export();
      final file = await ioDataSource.writeFileAsString(
        path: path.path,
        name: 'inex-back-up-${InexTime().timeMdyhms}',
        fileType: IoFileType.json,
        data: data,
      );
      await Share.shareXFiles([XFile(file.path)]);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _onImport(
    _Import event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(importingStatus: ImportingStatus.inProgress));
    try {
      final pickedFile = await ioDataSource.pickFile();

      if (pickedFile != null && pickedFile.path != null) {
        final data =
            await ioDataSource.readFileAsString(path: pickedFile.path!);

        if (data == null) {
          throw const ReadingFileException();
        }

        final counter =
            await dataSource.import(json.decode(data) as Map<String, dynamic>);

        emit(
          state.copyWith(
            importingStatus: ImportingStatus.done,
            importMessage: 'Imported '
                '${counter.placesSuccessCount} of ${counter.placesTotalCount}'
                ' Places and ${counter.transactionsSuccessCount} of '
                '${counter.transactionsTotalCount} Transactions',
          ),
        );
      } else {
        emit(
          state.copyWith(
            importingStatus: ImportingStatus.initial,
            importMessage: null,
            errorMessage: null,
          ),
        );
      }
    } on ReadingJsonException catch (e) {
      emit(
        state.copyWith(
          importingStatus: ImportingStatus.failure,
          errorMessage: e.message,
        ),
      );
    } on ReadingFileException catch (e) {
      emit(
        state.copyWith(
          importingStatus: ImportingStatus.failure,
          errorMessage: e.message,
        ),
      );
    } on FormatException catch (e) {
      emit(
        state.copyWith(
          importingStatus: ImportingStatus.failure,
          errorMessage: e.message,
        ),
      );
    } finally {
      emit(
        state.copyWith(
          importingStatus: ImportingStatus.initial,
          importMessage: null,
          errorMessage: null,
        ),
      );
    }
  }

  Future<void> _onExport(
    _Export event,
    Emitter<AppState> emit,
  ) async {
    final permissionStatus = await Permission.storage.status;
    if (!permissionStatus.isGranted) {
      await Permission.storage.request();
    }

    emit(state.copyWith(exportingStatus: ExportingStatus.inProgress));

    try {
      final filePath = await ioDataSource.getDirectory();

      if (filePath != null) {
        final data = await dataSource.export();

        final savedFile = await ioDataSource.writeFileAsString(
          path: filePath,
          name: 'inex-back-up-${InexTime().timeMdyhms}',
          fileType: IoFileType.json,
          data: data,
        );

        emit(
          state.copyWith(
            exportingStatus: ExportingStatus.done,
            exportPath: savedFile.path,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          exportingStatus: ExportingStatus.failure,
          errorMessage: '$e',
        ),
      );
    } finally {
      emit(
        state.copyWith(
          exportingStatus: ExportingStatus.initial,
          errorMessage: null,
          exportPath: null,
        ),
      );
    }
  }

  Future<void> _onChangeTheme(
    _ChangeTheme event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isThemeDark: event.isDark));
  }

  Future<void> _onChangeCurrenyFormat(
    _ChangeCurrenyFormat event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(currencyFormat: event.format));
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) => AppState(
        isThemeDark: json['isThemeDark'] as bool,
        currencyFormat: CurrencyFormat.values.firstWhere(
          (currency) => currency.name == json['currencyFormat'] as String,
          orElse: () => CurrencyFormat.iranRial,
        ),
      );

  @override
  Map<String, dynamic>? toJson(AppState state) => {
        'isThemeDark': state.isThemeDark,
        'currencyFormat': state.currencyFormat.name,
      };
}
