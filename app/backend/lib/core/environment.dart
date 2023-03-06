import 'package:dotenv/dotenv.dart';

class Environment {
  Environment(this._dotEnv) {
    _dotEnv.load();
  }

  final DotEnv _dotEnv;

  String get dbHost => _dotEnv['DB_HOST'] ?? 'notDefined';
  int get dbPort => int.tryParse(_dotEnv['DB_PORT'] ?? '') ?? 0;
  String get dbName => _dotEnv['DB_DATABASE'] ?? 'notDefined';
  String get dbUsername => _dotEnv['DB_USERNAME'] ?? 'notDefined';
  String get dbPassword => _dotEnv['DB_PASSWORD'] ?? 'notDefined';
  Env get env {
    final value = _dotEnv['ENV']?.toLowerCase();

    switch (value) {
      case 'prod':
      case 'production':
      case 'release':
        return Env.prod;
      default:
        return Env.dev;
    }
  }
}

enum Env {
  dev,
  prod;

  bool get isDevelopment => this == dev;
  bool get isProduction => !isDevelopment;
}
