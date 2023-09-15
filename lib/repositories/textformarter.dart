import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';

class EmailInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue;
  }

  bool isValidEmail(String email) {
    if (email.length < 3) {
      return false; // Minimum 3 characters before "@"
    }
    return EmailValidator.validate(email);
  }
}

class CPFInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    String formattedText = '';
    if (newText.length > 3) {
      formattedText += newText.substring(0, 3) + '.';
      if (newText.length > 6) {
        formattedText += newText.substring(3, 6) + '.';
        if (newText.length > 9) {
          formattedText += newText.substring(6, 9) + '-';
          formattedText += newText.substring(9);
        } else {
          formattedText += newText.substring(6);
        }
      } else {
        formattedText += newText.substring(3);
      }
    } else {
      formattedText = newText;
    }

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

class PasswordInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue;
  }

  bool isValidPassword(String password) {
    final regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
    return regex.hasMatch(password);
  }
}

class PasswordMatchValidator {
  final String originalPassword;

  PasswordMatchValidator(this.originalPassword);

  bool isMatchingPassword(String confirmPassword) {
    return confirmPassword == originalPassword;
  }
}

class PasswordMatchInputFormatter extends TextInputFormatter {
  final String originalPassword;

  PasswordMatchInputFormatter(this.originalPassword);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue;
  }

  bool isMatchingPassword(String confirmPassword) {
    return confirmPassword == originalPassword;
  }
}
