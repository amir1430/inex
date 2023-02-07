import 'package:formz/formz.dart';

enum NameFormError {
  invalid('Please enter valid name');

  const NameFormError(this.text);
  final String text;
}

class NameForm extends FormzInput<String, NameFormError> {
  const NameForm.dirty([super.value = '']) : super.dirty();
  const NameForm.pure([super.value = '']) : super.pure();

  @override
  NameFormError? validator(String value) {
    return value.length < 4 ? NameFormError.invalid : null;
  }
}
