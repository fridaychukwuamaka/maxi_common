part of 'helper.dart';

class Validator {
  static String? passwordValidation(String? val) {
    String uppercasePattern = '(?=.*[A-Z])';
    String lowercasePattern = '(?=.*[a-z])';
    String digitPattern = '(?=.*?[0-9])';
    String spcPattern = '(?=.*?[!@#\$&*~])';

    if (!(val!.length >= 8)) {
      return 'Must be at least 8 characters in length';
    } else if (!RegExp(uppercasePattern).hasMatch(val)) {
      return 'should contain at least one upper case';
    } else if (!RegExp(lowercasePattern).hasMatch(val)) {
      return 'should contain at least one lower case';
    } else if (!RegExp(digitPattern).hasMatch(val)) {
      return 'should contain at least one number';
    } else if (!RegExp(spcPattern).hasMatch(val)) {
      return 'should contain at least one special character';
    } else {
      return null;
    }
  }

  static bool isValidEmail(String? email) {
    if (email == null) return false;
    if (RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email)) {
      return true;
    } else {
      return false;
    }
  }

  static String? validateEmail(String? val) {
    if (val!.isEmpty) {
      return 'Email is Empty';
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(val)) {
      return 'Email address is not valid';
    }
    return null;
  }

  static String? validateString(String? val) {
    if (val!.isEmpty) {
      return 'Input field is empty';
    }
    return null;
  }

  static String? validatePhone(String? val) {
    if (val!.isEmpty) {
      return 'Phone number is empty';
    } else if (val.length > 16 || val.length < 9) {
      return 'Phone number is not valid';
    }
    if (RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(val)) {
      return null;
    } else {
      return 'Phone number is not valid';
    }
  }

  static String? dateValidator(DateTime? value) {
    if (value == null) {
      return 'Please select date';
    }
    return null;
  }

  static String? timeValidator(TimeOfDay? value) {
    if (value == null) {
      return 'Please select time';
    }
    return null;
  }

  static String? number(String? val) {
    if (num.tryParse(val!) != null) {
      return 'Please input a valid number';
    } else if (val.isEmpty) {
      return 'Input field is empty';
    }
    return null;
  }

  static String? validateSecretPhase(List<String>? val, List<String> val1) {
    if (val!.isEmpty) {
      return 'Please arrange the secret phase';
    } else if (val.join(' ').contains(val1.join(' '))) {
      return 'Secret phase not in the correct order';
    }
    return null;
  }
}

