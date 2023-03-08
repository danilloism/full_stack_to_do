import 'package:database/database.dart';
import 'package:exceptions/exceptions.dart';
import 'package:models/models.dart';
import 'package:postgres/postgres.dart';
import 'package:typedefs/typedefs.dart';

abstract class UserDataSource {
  Future<User> getById(UserId id, {bool inDifferenteConnection = false});
  Future<User> create(
    CreateUserDto user, {
    bool inDifferenteConnection = false,
  });
  Future<User> getByEmail(String email, {bool inDifferenteConnection = false});
}

class UserDataSourceImpl implements UserDataSource {
  const UserDataSourceImpl(this._dbConn);

  final PgConnection _dbConn;

  @override
  Future<User> create(
    CreateUserDto user, {
    bool inDifferenteConnection = false,
  }) async {
    final conn = inDifferenteConnection ? _dbConn.copyConnection() : _dbConn;
    try {
      await conn.open();

      final result = await conn.query(
        '''
        INSERT INTO users (name, email, password)
        VALUES (@name, @email, @password)
        RETURNING *
        ''',
        substitutionValues: user.toJson(),
      );

      if (result.affectedRowCount == 0) {
        throw const ServerException('Failed to create user');
      }

      return User.fromJson(result.first.toColumnMap());
    } on PostgreSQLException catch (e) {
      throw ServerException(e.message ?? 'Unexpected error');
    } finally {
      await conn.close();
    }
  }

  @override
  Future<User> getByEmail(
    String email, {
    bool inDifferenteConnection = false,
  }) async {
    try {
      await _dbConn.open();
      final result = await _dbConn.query(
        '''
        SELECT id, name, email, password, created_at
        FROM users WHERE email = @email
        ''',
        substitutionValues: {'email': email},
      );
      if (result.isEmpty) {
        throw const NotFoundException('User not found');
      }
      return User.fromJson(result.first.toColumnMap());
    } on PostgreSQLException catch (e) {
      throw ServerException(e.message ?? 'Unexpected error');
    } finally {
      await _dbConn.close();
    }
  }

  @override
  Future<User> getById(UserId id, {bool inDifferenteConnection = false}) async {
    try {
      await _dbConn.open();
      final result = await _dbConn.query(
        'SELECT id, name, email, created_at FROM users WHERE id = @id',
        substitutionValues: {'id': id.toString()},
      );
      if (result.isEmpty) {
        throw const NotFoundException('User not found');
      }
      return User.fromJson(result.first.toColumnMap());
    } on PostgreSQLException catch (e) {
      throw ServerException(e.message ?? 'Unexpected error');
    } finally {
      await _dbConn.close();
    }
  }
}
