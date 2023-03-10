import 'dart:io';

import 'package:exceptions/exceptions.dart';

class NotFoundException extends HttpException {
  const NotFoundException(String message) : super(message, HttpStatus.notFound);
}
