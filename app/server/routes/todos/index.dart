import 'dart:io';

import 'package:server/controller/todo_controller.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final controller = context.read<TodoController>();

  final req = context.request;
  switch (req.method) {
    case HttpMethod.get:
      return await controller.getAll(req);
    case HttpMethod.post:
      return await controller.create(req);
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response.json(
        body: {'message': '👀 Looks like you are lost 🔦'},
        statusCode: HttpStatus.methodNotAllowed,
      );
  }
}
