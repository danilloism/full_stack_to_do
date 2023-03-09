import 'package:dart_frog/dart_frog.dart';
import 'package:data_source/data_source.dart';
import 'package:repository/repository.dart';
import 'package:server/controllers/todo_controller.dart';

Handler middleware(Handler handler) => handler.use(
      provider<TodoController>(
        (context) => TodoController(
          TodoRepositoryImpl(
            TodoDataSourceImpl(context.read()),
          ),
        ),
      ),
    );
