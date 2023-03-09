import 'package:dart_frog/dart_frog.dart';
import 'package:server/controllers/todo_controller.dart';
import 'package:server/request_handlers/not_allowed_request_handler.dart';

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
      return notAllowedRequestHandler(context);
  }
}
