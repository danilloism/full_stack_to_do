import 'dart:async';

import 'package:database/database.dart';
import 'package:exceptions/exceptions.dart';
import 'package:models/models.dart';
import 'package:postgres/postgres.dart';
import 'package:typedefs/typedefs.dart';

part 'todo_data_source_db.dart';
part 'todo_data_source_memory.dart';

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
