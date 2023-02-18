import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inex/data_form/data_form.dart';
import 'package:inex/data_source/data_source.dart';
import 'package:inex/exceptions/exceptions.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required this.dataSource})
      : super(const AuthenticationState()) {
    on<_ChangeEmail>(_onChangeEmail);
    on<_ChangePassword>(_onChangePassword);
    on<_ChangeIsSigUp>(_onChangeIsSigUp);
    on<_ChangeShowPassword>(_onShowPassword);
    on<_Login>(_onLogin);
    on<_SingUp>(_onSignUp);
  }

  final AuthenticationDataSource dataSource;

  void _onChangeEmail(
    _ChangeEmail event,
    Emitter<AuthenticationState> emit,
  ) {
    final newEmail = EmailForm.dirty(event.value);
    emit(
      state.copyWith(
        emailForm: newEmail,
        status: Formz.validate([
          newEmail,
          state.passwordForm,
        ]),
      ),
    );
  }

  void _onChangePassword(
    _ChangePassword event,
    Emitter<AuthenticationState> emit,
  ) {
    final newPassword = PasswordForm.dirty(event.value);
    emit(
      state.copyWith(
        passwordForm: newPassword,
        status: Formz.validate([
          newPassword,
          state.emailForm,
        ]),
      ),
    );
  }

  void _onChangeIsSigUp(
    _ChangeIsSigUp event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(state.copyWith(isSignUp: event.isSignUp));
  }

  void _onShowPassword(
    _ChangeShowPassword event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(state.copyWith(hidePassword: event.hidePassword));
  }

  Future<void> _onLogin(
    _Login event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await dataSource.loginWithEmail(
        email: state.emailForm.value,
        password: state.passwordForm.value,
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on InexException catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: e.toString(),
        ),
      );
    } finally {
      await Future<void>.delayed(const Duration(seconds: 3));
      emit(
        state.copyWith(
          errorMessage: null,
          status: FormzStatus.submissionCanceled,
        ),
      );
    }
  }

  Future<void> _onSignUp(
    _SingUp event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await dataSource.signUpWithEmail(
        email: state.emailForm.value,
        password: state.passwordForm.value,
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on InexException catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: e.toString(),
        ),
      );
    } finally {
      await Future<void>.delayed(const Duration(seconds: 3));
      emit(
        state.copyWith(
          errorMessage: null,
          status: FormzStatus.submissionCanceled,
        ),
      );
    }
  }
}
