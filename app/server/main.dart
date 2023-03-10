import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:data_source/data_source.dart';
import 'package:database/database.dart';
import 'package:dotenv/dotenv.dart';
import 'package:repository/repository.dart';
import 'package:server/core/environment.dart';
import 'package:server/services/jwt_service.dart';

final _env = Environment(DotEnv());
final _dbOptions = DatabaseOptions(
  name: _env.dbName,
  host: _env.dbHost,
  password: _env.dbPassword,
  port: _env.dbPort,
  username: _env.dbUsername,
);

PgConnection get _db => PgClient(_dbOptions);

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(
    handler
        .use(provider<Environment>((_) => _env))
        .use(provider<PgConnection>((_) => _db))
        .use(provider<JwtService>((context) => _jwt))
        .use(
          provider<UserRepository>(
            (_) => _userRepo(
              UserDataSourceImpl(_db),
              const PasswordHasherService(),
            ),
          ),
        ),
    ip,
    port,
  );
}

JwtService get _jwt => JwtService(_env);

UserRepository _userRepo(
  UserDataSource dataSrc,
  PasswordHasherService psswrdHasher,
) =>
    UserRepositoryImpl(dataSrc, psswrdHasher);
