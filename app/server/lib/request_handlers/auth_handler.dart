import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';

extension ReadAsync on RequestContext {
  Future<T> readAsync<T extends Object>() => read<Future<T>>();
}

Future<Response> authHandler(
  RequestContext context, {
  required Future<Response> Function(RequestContext context) onAuthUserInjected,
}) async {
  final auth = await context.readAsync<AuthUser>();

  return auth.maybeWhen(
    failure: (failure) => Response.json(
      body: failure.toJson(),
      statusCode: failure.statusCode,
    ),
    orElse: () => onAuthUserInjected(context.provide<AuthUser>(() => auth)),
  );
}
