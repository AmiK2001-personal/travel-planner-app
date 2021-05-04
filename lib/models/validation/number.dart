import 'package:formz/formz.dart';

enum NumberValidationError { invalid }

class Number extends FormzInput<String, NumberValidationError> {
  const Number.pure([String value = '']) : super.pure(value);
  const Number.dirty([String value = '']) : super.dirty(value);

  @override
  NumberValidationError? validator(String? value) {
    NumberValidationError? isInvalidNumber(int? number) {
      if (number == null) {
        return NumberValidationError.invalid;
      } else {
        return number > 0 && number <= 150
            ? null
            : NumberValidationError.invalid;
      }
    }

    final int? number = int.tryParse(value ?? '');
    return isInvalidNumber(number);
  }
}
