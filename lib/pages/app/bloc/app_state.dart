part of 'app_bloc.dart';

enum ExportingStatus { initial, inProgress, done, failure }

enum ImportingStatus { initial, inProgress, done, failure }

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isThemeDark,
    @Default(SyncingStatus.initial) SyncingStatus syncingStatus,
    @Default(CurrencyFormat.iranRial) CurrencyFormat currencyFormat,
    @Default(ExportingStatus.initial) ExportingStatus exportingStatus,
    @Default(ImportingStatus.initial) ImportingStatus importingStatus,
    @Default(AuthenticationStatus.initial())
        AuthenticationStatus authenticationStatus,
    String? importMessage,
    String? exportPath,
    String? errorMessage,
  }) = _AppState;
}
