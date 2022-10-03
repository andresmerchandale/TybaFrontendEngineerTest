// ignore_for_file: prefer_typing_uninitialized_variables

class CustomException implements Exception {
  final message;
  final code;

  CustomException([this.message, this.code]);

  @override
  String toString() {
    return '$code$message';
  }
}

class FetchDataException extends CustomException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends CustomException {
  BadRequestException([String? message]) : super(message, 'Invalid request');
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([String? message])
      : super(message, 'Unauthorised request');
}

class InvalidInputException extends CustomException {
  InvalidInputException([String? message])
      : super(message, 'Unauthorised Input');
}
