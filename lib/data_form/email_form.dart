import 'package:formz/formz.dart';

enum EmailFormException {
  invalid('Invalid Email Format');

  const EmailFormException(this.message);
  final String message;
}

class EmailForm extends FormzInput<String, EmailFormException> {
  const EmailForm.dirty([super.value = '']) : super.dirty();
  const EmailForm.pure([super.value = '']) : super.pure();

  static const _reg = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

  @override
  EmailFormException? validator(String value) {
    return RegExp(_reg).hasMatch(value) ? null : EmailFormException.invalid;
  }
}
