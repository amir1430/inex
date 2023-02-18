import 'package:formz/formz.dart';

enum PasswordFormException {
  invalid('Password must have 6 character.');

  const PasswordFormException(this.message);
  final String message;
}

class PasswordForm extends FormzInput<String, PasswordFormException> {
  const PasswordForm.dirty([super.value = '']) : super.dirty();
  const PasswordForm.pure([super.value = '']) : super.pure();

  @override
  PasswordFormException? validator(String value) {
    return value.isNotEmpty && value.length > 5
        ? null
        : PasswordFormException.invalid;
  }
}
