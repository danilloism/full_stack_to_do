import 'package:dart_frog/dart_frog.dart';
import 'package:server/controller/todo_controller.dart';

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
      return controller.notAllowed();
  }
}
