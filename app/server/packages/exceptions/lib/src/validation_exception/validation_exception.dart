import 'package:typedefs/typedefs.dart';

class ValidationException implements Exception {
  const ValidationException(this.message, this.errors);

  final String message;
  final ValidationErrors errors;
}
