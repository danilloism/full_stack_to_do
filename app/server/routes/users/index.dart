import 'package:dart_frog/dart_frog.dart';
import 'package:server/controllers/user_controller.dart';
import 'package:server/request_handlers/not_allowed_request_handler.dart';

Future<Response> onRequest(RequestContext context) async {
  final req = context.request;

  if (req.method != HttpMethod.post) {
    return notAllowedRequestHandler();
  }

  return context.read<UserController>().create(context.request);
}
