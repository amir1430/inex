part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.changeTheme({required bool isDark}) = _ChangeTheme;
  const factory AppEvent.changeCurrenyFormat(CurrencyFormat format) =
      _ChangeCurrenyFormat;
}
