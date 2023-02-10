part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.started() = _Started;
  const factory AppEvent.signOut() = _SignOut;
  const factory AppEvent.share() = _Share;
  const factory AppEvent.import() = _Import;
  const factory AppEvent.export() = _Export;
  const factory AppEvent.changeTheme({required bool isDark}) = _ChangeTheme;
  const factory AppEvent.changeCurrenyFormat(CurrencyFormat format) =
      _ChangeCurrenyFormat;
}
