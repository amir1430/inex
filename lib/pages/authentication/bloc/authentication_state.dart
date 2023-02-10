part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(EmailForm.pure()) EmailForm emailForm,
    @Default(PasswordForm.pure()) PasswordForm passwordForm,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(false) bool isSignUp,
    @Default(true) bool hidePassword,
    String? errorMessage,
  }) = _AuthenticationState;
}
