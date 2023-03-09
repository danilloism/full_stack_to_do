import 'package:dart_frog/dart_frog.dart';
import 'package:server/controllers/todo_controller.dart';
import 'package:server/request_handlers/not_allowed_request_handler.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  final controller = context.read<TodoController>();
  final req = context.request;

  switch (req.method) {
    case HttpMethod.get:
      return await controller.getOne(req, id);
    case HttpMethod.delete:
      return await controller.remove(req, id);
    case HttpMethod.put:
      return await controller.update(req, id);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.post:
      return notAllowedRequestHandler(context);
  }
}
