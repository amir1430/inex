part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.login() = _Login;
  const factory AuthenticationEvent.singUp() = _SingUp;
  const factory AuthenticationEvent.changeEmail(String value) = _ChangeEmail;
  const factory AuthenticationEvent.changeShowPassword({
    required bool hidePassword,
  }) = _ChangeShowPassword;
  const factory AuthenticationEvent.changePassword(String value) =
      _ChangePassword;
  const factory AuthenticationEvent.changeIsSigUp({required bool isSignUp}) =
      _ChangeIsSigUp;
}
