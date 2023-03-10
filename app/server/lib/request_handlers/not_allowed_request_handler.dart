import 'package:dart_frog/dart_frog.dart';
import 'package:failures/failures.dart';

const _notAllowedFailure = NotAllowedFailure();

Future<Response> notAllowedRequestHandler([RequestContext? context]) async {
  return Response.json(
    body: _notAllowedFailure.toJson(),
    statusCode: _notAllowedFailure.statusCode,
  );
}
