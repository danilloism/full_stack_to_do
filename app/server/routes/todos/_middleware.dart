import 'package:dart_frog/dart_frog.dart';
import 'package:data_source/data_source.dart';
import 'package:models/models.dart';
import 'package:repository/repository.dart';
import 'package:server/controllers/todo_controller.dart';
import 'package:server/request_handlers/auth_handler.dart';
import 'package:server/request_handlers/unauthenticated_request_handler.dart';

Handler middleware(Handler handler) {
  return (context) => authHandler(
        context,
        onAuthUserInjected: (injectedAuthContext) async {
          final auth = injectedAuthContext.read<AuthUser>();

          return auth.maybeWhen(
            authenticated: (user) => handler(
              injectedAuthContext.provide<TodoController>(
                () => TodoController(
                  TodoRepositoryImpl(
                    TodoDataSourceImpl(
                      context.read(),
                      user,
                    ),
                  ),
                ),
              ),
            ),
            orElse: unauthenticatedRequestHandler,
          );
        },
      );
}
