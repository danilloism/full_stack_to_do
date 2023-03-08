import 'package:dart_frog/dart_frog.dart';
import 'package:data_source/data_source.dart';
import 'package:repository/repository.dart';
import 'package:server/controller/todo_controller.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<TodoController>(
      (context) => TodoController(
        TodoRepositoryImpl(
          DbDataSource(context.read()),
        ),
      ),
    ),
  );
}
