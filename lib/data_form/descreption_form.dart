import 'package:formz/formz.dart';

enum DescriptionFormError {
  invalid('Please enter valid description');

  const DescriptionFormError(this.text);
  final String text;
}

class DescriptionForm extends FormzInput<String, DescriptionFormError> {
  const DescriptionForm.dirty([super.value = '']) : super.dirty();
  const DescriptionForm.pure([super.value = '']) : super.pure();

  @override
  DescriptionFormError? validator(String value) {
    if (value.isEmpty) {
      return null;
    } else {
      return value.length < 4 ? DescriptionFormError.invalid : null;
    }
  }
}
