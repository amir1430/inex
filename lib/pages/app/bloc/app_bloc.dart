import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:inex/utils/currency_format.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';
part 'app_bloc.g.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<_ChangeTheme>(_onChangeTheme);
    on<_ChangeCurrenyFormat>(_onChangeCurrenyFormat);
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
  AppState? fromJson(Map<String, dynamic> json) => AppState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AppState state) => state.toJson();
}
