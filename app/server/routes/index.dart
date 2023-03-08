import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:failures/failures.dart';

Future<Response> onRequest(RequestContext context) async {
  const notAllowedFailure = NotAllowedFailure();

  return Response.json(
    body: notAllowedFailure.toJson(),
    statusCode: notAllowedFailure.statusCode,
  );
}
