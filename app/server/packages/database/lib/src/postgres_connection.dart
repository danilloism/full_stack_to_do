part of 'database_connection.dart';

abstract class PgConnection extends _DatabaseConnection {
  PgConnection(super.options);

  @override
  Future<PostgreSQLResult> query(
    String query, {
    Map<String, dynamic>? substitutionValues,
  });
}

class PgClient extends PgConnection {
  PgClient(super.options) {
    _db = PostgreSQLConnection(
      _options.host,
      _options.port,
      _options.name,
      username: _options.username,
      password: _options.password,
    );
  }

  late final PostgreSQLConnection _db;

  @override
  Future<void> open() async {
    try {
      await _db.open();
      log('Database connected successfully');
    } catch (e) {
      log('Database failed to connect: $e');
    }
  }

  @override
  Future<void> close() => _db.close();

  @override
  Future<PostgreSQLResult> query(
    String query, {
    Map<String, dynamic>? substitutionValues,
  }) =>
      _db.query(query, substitutionValues: substitutionValues);
}
