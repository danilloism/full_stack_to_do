import 'dart:io';

import 'package:exceptions/exceptions.dart';

class BadRequestException extends HttpException {
  const BadRequestException({
    required String message,
    this.errors = const {},
  }) : super(message, HttpStatus.badRequest);

  final Map<String, List<String>> errors;
}
