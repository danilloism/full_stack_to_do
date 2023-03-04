part of 'http_exception.dart';

class NotFoundException extends HttpException {
  const NotFoundException(String message) : super(message, HttpStatus.notFound);
}
