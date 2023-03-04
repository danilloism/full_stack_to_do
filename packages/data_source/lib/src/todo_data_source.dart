import 'dart:async';

import 'package:models/models.dart';
import 'package:typedefs/typedefs.dart';

abstract class TodoDataSource {
  Future<List<Todo>> getAll();
  Future<Todo> getById(TodoId id);
  Future<Todo> create(CreateTodoDto todo);
  Future<Todo> update({
    TodoId id,
    required UpdateTodoDto todo,
  });
  Future<void> deleteById(TodoId id);
}
