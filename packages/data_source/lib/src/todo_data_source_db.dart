part of 'todo_data_source.dart';

class DbDataSource implements TodoDataSource {
  const DbDataSource(this._dbConn);

  final DatabaseConnection _dbConn;

  @override
  Future<Todo> create(CreateTodoDto todo) async {
    try {
      await _dbConn.open();

      final result = await _dbConn.db.query(
        '''
        INSERT INTO todos(title, description, completed, created_at)
        VALUES (@title, @description, @completed, @created_at) RETURNING *
        ''',
        substitutionValues: {
          'title': todo.title,
          'description': todo.description,
          'completed': false,
          'created_at': DateTime.now(),
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
      await _dbConn.db.query(
        '''
        DELETE FROM todos
        WHERE id = @id
        ''',
        substitutionValues: {'id': id},
      );
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

      final result = await _dbConn.db.query('SELECT * FROM todos');

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

      final result = await _dbConn.db.query(
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

      final result = await _dbConn.db.query(
        '''
        UPDATRE todos
        SET title = COALESCE(@new_title, title),
            description = COALESCE(@new_description, description),
            completed = COALESCE(@new_completed, completed),
            updated_at = current_timestamp
        WHERE id = @id
        RETURNING *
        ''',
        substitutionValues: {
          'id': id,
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
