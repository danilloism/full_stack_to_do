import 'package:backend/controller/todo_controller.dart';
import 'package:backend/core/environment.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:data_source/data_source.dart';
import 'package:database/database.dart';
import 'package:dotenv/dotenv.dart';
import 'package:repository/repository.dart';

final _env = Environment(DotEnv());
final _db = DatabaseConnection(
  dbName: _env.dbName,
  host: _env.dbHost,
  password: _env.dbPassword,
  port: _env.dbPort,
  username: _env.dbUsername,
);

final TodoDataSource _dataSource =
    _env.env.isDevelopment ? InMemoryDataSource() : DbDataSource(_db);

Handler middleware(Handler handler) {
  return handler
    ..use(requestLogger())
    ..use(
      provider<TodoController>(
        (_) => TodoController(TodoRepositoryImpl(_dataSource)),
      ),
    );
}
