import 'package:dotenv/dotenv.dart';

class Environment {
  Environment(this._env) {
    _env.load();
  }

  final DotEnv _env;

  String get dbHost => _env['DB_HOST'] ?? 'localhost';
  int get dbPort => int.tryParse(_env['DB_PORT'] ?? '') ?? 5432;
  String get dbName => _env['DB_DATABASE'] ?? 'dev_todo';
  String get dbUsername => _env['DB_USERNAME'] ?? 'dev';
  String get dbPassword => _env['DB_PASSWORD'] ?? 'dev';
  Env get env {
    final value = _env['ENV'] ?? 'dev';

    final result = Env.values.singleWhere(
        (element) => value.toLowerCase().contains(element.name.toLowerCase()));
    return result;
  }
}

enum Env {
  dev,
  prod;

  bool get isDevelopment => this == dev;
  bool get isProduction => !isDevelopment;
}
