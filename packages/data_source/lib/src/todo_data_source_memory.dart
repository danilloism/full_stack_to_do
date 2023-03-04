part of 'todo_data_source.dart';

class InMemoryDataSource implements TodoDataSource {
  /// {@macro in_memory_data_source}

  final _cache = <TodoId, Todo>{};
  TodoId _currentId = 0;

  void _incrementId() => _currentId++;

  @override
  Future<Todo> create(CreateTodoDto todo) async {
    final id = _currentId;
    _incrementId();

    final createdTodo = Todo(
      id: id,
      title: todo.title,
      createdAt: DateTime.now(),
      description: todo.description,
    );

    _cache[id] = createdTodo;

    return createdTodo;
  }

  @override
  Future<void> deleteById(TodoId id) async {
    _cache.remove(id);
  }

  @override
  Future<List<Todo>> getAll() async {
    return _cache.values.toList();
  }

  @override
  Future<Todo> getById(TodoId id) async {
    if (_cache.containsKey(id)) {
      return _cache[id]!;
    }
    throw Exception('not found');
  }

  @override
  Future<Todo> update({required TodoId id, required UpdateTodoDto todo}) async {
    if (_cache.containsKey(id)) {
      var updatedTodo = _cache[id]!;

      updatedTodo = updatedTodo.copyWith(
        title: todo.title ?? updatedTodo.title,
        completed: todo.completed ?? updatedTodo.completed,
        description: todo.description,
        updatedAt: DateTime.now(),
      );

      _cache[id] = updatedTodo;

      return updatedTodo;
    }
    throw Exception('not found');
  }
}
