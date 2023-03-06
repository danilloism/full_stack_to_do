import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:models/models.dart';
import 'package:test/test.dart';

void main() {
  late Todo createdTodo;
  late final Uri _serverUri;
  late final Uri _todosUri;

  Future<http.Response> _get(Uri uri) => http.get(uri);
  Future<http.Response> _delete(Uri uri) => http.get(uri);

  setUpAll(() {
    _serverUri = Uri.parse('http://localhost:8080');
    _todosUri = _serverUri.replace(path: 'todos');
  });

  tearDownAll(() async {
    final res = await _get(_todosUri);
    final decoded = jsonDecode(res.body);

    final todos = (List.from(jsonDecode(res.body) as Iterable))
        .map((e) => Todo.fromJson(e as Map<String, dynamic>))
        .toList();

    for (final todo in todos) {
      await _delete(_todosUri.replace(path: 'todos/${todo.id}'));
    }

    // if (todos.isNotEmpty) {
    //   final deleteTodos =
    //       todos.map((e) => _delete(_todosUri.replace(path: 'todos/${e.id}')));

    //   await Future.wait(deleteTodos);
    // }
  });

  group('E2E |', () {
    test('GET /todos returns empty list of todos', () async {
      final res = await _get(_todosUri);
      expect(res.statusCode, HttpStatus.ok);
      expect(res.body, equals('[]'));
    });
  });
}
