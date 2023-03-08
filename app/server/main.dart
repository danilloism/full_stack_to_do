import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:database/database.dart';
import 'package:dotenv/dotenv.dart';
import 'package:server/core/environment.dart';

final _env = Environment(DotEnv());
final _dbOptions = DatabaseOptions(
  name: _env.dbName,
  host: _env.dbHost,
  password: _env.dbPassword,
  port: _env.dbPort,
  username: _env.dbUsername,
);

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(
    handler.use(provider<Environment>((context) => _env)).use(
          provider<PgConnection>(
            (context) => PgClient(_dbOptions),
          ),
        ),
    ip,
    port,
  );
}
