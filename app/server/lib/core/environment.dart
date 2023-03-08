import 'package:dotenv/dotenv.dart';

const _notDefined = 'notDefined';

class Environment {
  Environment(this._dotEnv) {
    _dotEnv.load();
  }

  final DotEnv _dotEnv;

  String get dbHost => _dotEnv['DB_HOST'] ?? _notDefined;
  int get dbPort => int.tryParse(_dotEnv['DB_PORT'] ?? '') ?? 0;
  String get dbName => _dotEnv['DB_DATABASE'] ?? _notDefined;
  String get dbUsername => _dotEnv['DB_USERNAME'] ?? _notDefined;
  String get dbPassword => _dotEnv['DB_PASSWORD'] ?? _notDefined;
  String get jwtSecret => _dotEnv['JWT_SECRET'] ?? _notDefined;
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
