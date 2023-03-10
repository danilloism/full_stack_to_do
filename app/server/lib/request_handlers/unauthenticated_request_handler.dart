import 'package:dart_frog/dart_frog.dart';
import 'package:failures/failures.dart';

const _failure = AuthFailure();

Future<Response> unauthenticatedRequestHandler([
  RequestContext? context,
]) async {
  return Response.json(
    body: _failure.toJson(),
    statusCode: _failure.statusCode,
  );
}
