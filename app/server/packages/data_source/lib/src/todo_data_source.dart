import 'dart:async';

import 'package:database/database.dart';
import 'package:exceptions/exceptions.dart';
import 'package:models/models.dart';
import 'package:postgres/postgres.dart';
import 'package:typedefs/typedefs.dart';

abstract class TodoDataSource {
  Future<List<Todo>> getAll();
  Future<Todo> getById(TodoId id);
  Future<Todo> create(CreateTodoDto todo);
  Future<Todo> update({
    required TodoId id,
    required UpdateTodoDto todo,
  });
  Future<void> deleteById(TodoId id);
}

class TodoDataSourceImpl implements TodoDataSource {
  const TodoDataSourceImpl(this._dbConn, this.user);

  final PgConnection _dbConn;
  final User user;

  @override
  Future<Todo> create(CreateTodoDto todo) async {
    try {
      await _dbConn.open();

      final result = await _dbConn.query(
        '''
        INSERT INTO todos(title, description, user_id)
        VALUES (@title, @description, @user_id)
        RETURNING *
        ''',
        substitutionValues: {
          ...todo.toJson(),
          'user_id': user.id.toString(),
        },
      );

      if (result.affectedRowCount == 0) {
        throw const ServerException('Failed to create todo');
      }

      return Todo.fromJson(result.first.toColumnMap());
    } on PostgreSQLException catch (e) {
      throw ServerException(e.message ?? 'Unexpected error');
    } finally {
      await _dbConn.close();
    }
  }

  @override
  Future<void> deleteById(TodoId id) async {
    try {
      await _dbConn.open();

      final result = await _dbConn.query(
        '''
        DELETE FROM todos
        WHERE id = @id
        ''',
        substitutionValues: {'id': id},
      );

      if (result.affectedRowCount == 0) {
        throw const NotFoundException('Todo not found');
      }
    } on PostgreSQLException catch (e) {
      throw ServerException(e.message ?? 'Unexpected error');
    } finally {
      await _dbConn.close();
    }
  }

  @override
  Future<List<Todo>> getAll() async {
    try {
      await _dbConn.open();

      final result = await _dbConn.query('SELECT * FROM todos');

      final data =
          result.map((e) => e.toColumnMap()).map(Todo.fromJson).toList();

      return data;
    } on PostgreSQLException catch (e) {
      throw ServerException(e.message ?? 'Unexpected error');
    } finally {
      await _dbConn.close();
    }
  }

  @override
  Future<Todo> getById(TodoId id) async {
    try {
      await _dbConn.open();

      final result = await _dbConn.query(
        'SELECT * FROM todos WHERE id = @id',
        substitutionValues: {'id': id},
      );

      if (result.isEmpty) {
        throw const NotFoundException('Todo not found');
      }

      return Todo.fromJson(result.first.toColumnMap());
    } on PostgreSQLException catch (e) {
      throw ServerException(e.message ?? 'Unexpected error');
    } finally {
      await _dbConn.close();
    }
  }

  @override
  Future<Todo> update({required TodoId id, required UpdateTodoDto todo}) async {
    try {
      await _dbConn.open();

      final result = await _dbConn.query(
        '''
        UPDATE todos
        SET title = COALESCE(@new_title, title),
            description = COALESCE(@new_description, description),
            completed = COALESCE(@new_completed, completed),
            updated_at = current_timestamp
        WHERE id = @id
        AND user_id = @user_id
        RETURNING *
        ''',
        substitutionValues: {
          'id': id,
          'user_id': user.id.toString(),
          'new_title': todo.title,
          'new_description': todo.description,
          'new_completed': todo.completed,
        },
      );

      if (result.isEmpty) {
        throw const NotFoundException('Todo not found');
      }

      return Todo.fromJson(result.first.toColumnMap());
    } on PostgreSQLException catch (e) {
      throw ServerException(e.message ?? 'Unexpected error');
    } finally {
      await _dbConn.close();
    }
  }
}
