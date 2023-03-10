import 'dart:io';

import 'package:exceptions/exceptions.dart';

class UnauthorizedException extends HttpException {
  const UnauthorizedException({
    String message = 'Unauthorized',
    this.errors = const {},
  }) : super(message, HttpStatus.unauthorized);

  final Map<String, List<String>> errors;
}
