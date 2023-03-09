import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<Response> unimplementedRequestHandler([RequestContext? context]) async {
  return Response.json(
    body: {'error': '👀 Not implemented yet'},
    statusCode: HttpStatus.notImplemented,
  );
}
