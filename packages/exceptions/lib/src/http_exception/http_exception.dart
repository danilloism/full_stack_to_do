import 'dart:io';

part 'not_found_exception.dart';
part 'bad_request_exception.dart';

abstract class HttpException implements Exception {
  const HttpException(this.message, this.statusCode);

  final String message;
  final int statusCode;

  @override
  String toString() => '$runtimeType: $message';
}
