import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:server/controllers/user_controller.dart';
import 'package:server/request_handlers/not_allowed_request_handler.dart';

FutureOr<Response> onRequest(RequestContext context) {
  final controller = context.read<UserController>();
  if (context.request.method != HttpMethod.post) {
    return notAllowedRequestHandler(context);
  }
  return controller.login(context.request);
}
