import 'package:backend/core/environment.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:data_source/data_source.dart';
import 'package:database/database.dart';
import 'package:dotenv/dotenv.dart';
import 'package:repository/repository.dart';

final _env = Environment(DotEnv());
final db = DatabaseConnection(
  dbName: _env.dbName,
  host: _env.dbHost,
  password: _env.dbPassword,
  port: _env.dbPort,
  username: _env.dbUsername,
);

Handler middleware(Handler handler) {
  late final TodoDataSource dataSource;
  if (_env.env.isDevelopment) {
    dataSource = InMemoryDataSource();
  } else {
    dataSource = DbDataSource(db);
  }

  return handler
    ..use(provider<TodoRepository>((_) => TodoRepositoryImpl(dataSource)))
    ..use(requestLogger());
}
