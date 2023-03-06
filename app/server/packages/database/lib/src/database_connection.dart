import 'dart:developer';

import 'package:postgres/postgres.dart';

class DatabaseConnection {
  DatabaseConnection({
    required String host,
    required int port,
    required String dbName,
    required String username,
    required String password,
  })  : _host = host,
        _port = port,
        _dbName = dbName,
        _username = username,
        _password = password;

  final String _host;
  final int _port;
  final String _dbName;
  final String _username;
  final String _password;

  PostgreSQLConnection? _db;

  PostgreSQLConnection get db =>
      _db ??= throw Exception('Database connection not initialized');

  bool get _dbIsDefined => _db != null;

  Future<void> open() async {
    try {
      _db = PostgreSQLConnection(
        _host,
        _port,
        _dbName,
        username: _username,
        password: _password,
      );

      await _db!.open();
      log('Database connected successfully');
    } catch (e) {
      log('Database failed to connect: $e');
    }
  }

  Future<void> close() => _db!.close();
}
