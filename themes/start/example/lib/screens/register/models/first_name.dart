import 'package:formz/formz.dart';

enum FirstNameValidationError { empty }

class FirstName extends FormzInput<String, FirstNameValidationError> {
  const FirstName.pure() : super.pure('');
  const FirstName.dirty([String value = '']) : super.dirty(value);

  @override
  FirstNameValidationError? validator(String? value) {
    return value?.isNotEmpty == true ? null : FirstNameValidationError.empty;
  }
}
