import 'dart:convert';
import 'dart:io';

import 'package:failures/failures.dart';
import 'package:http/http.dart';
import 'package:models/models.dart';
import 'package:test/test.dart';
import 'package:typedefs/typedefs.dart';

extension _DecodedBody on Response {
  T decodedBodyAs<T>() => jsonDecode(body) as T;
  T? decodedBodyAsNullable<T>() => body.isEmpty ? null : decodedBodyAs();
}

const Map<String, String> _contentTypeJsonHeaders = {
  'Content-Type': 'application/json',
};

const _e2eTodoTitle = 'E2E|TODO|TITLE';
const _e2eTodoDesc = 'E2E|TODO|DESC';

const _createTodoDto = CreateTodoDto(
  title: _e2eTodoTitle,
  description: _e2eTodoDesc,
);

const _notAllowedFailure = NotAllowedFailure();

typedef DecodedJson = Map<String, dynamic>;

void main() {
  late Todo createdTodo;
  late final Uri todosUri;

  Uri specificTodoUri(TodoId id) => todosUri.replace(path: 'todos/$id');

  setUpAll(() {
    todosUri = Uri.parse('http://localhost:8080/todos');
  });

  tearDownAll(() async {
    final res = await get(todosUri);
    final body = res.decodedBodyAs<Iterable<dynamic>>();

    final todos = body
        .map((todo) => Todo.fromJson(todo as DecodedJson))
        .where((todo) => todo.title == _e2eTodoTitle);

    final deleteTodos = todos.map((todo) => delete(specificTodoUri(todo.id)));

    await Future.wait(deleteTodos);
  });

  group('E2E |', () {
    test('GET /todos returns empty list of todos', () async {
      final res = await get(todosUri);
      expect(res.statusCode, HttpStatus.ok);
      expect(res.body, equals('[]'));
    });

    test('POST /todos to create a new todo', () async {
      final res = await post(
        todosUri,
        headers: _contentTypeJsonHeaders,
        body: jsonEncode(_createTodoDto.toJson()),
      );

      expect(res.statusCode, HttpStatus.created);

      final body = res.decodedBodyAs<DecodedJson>();

      createdTodo = Todo.fromJson(body);

      expect(createdTodo.title, _createTodoDto.title);
      expect(createdTodo.description, _createTodoDto.description);
    });

    test('GET /todos returns list of todos with one todo', () async {
      final res = await get(todosUri);
      expect(res.statusCode, HttpStatus.ok);

      final body = res.decodedBodyAs<List<dynamic>>();

      final todos =
          body.map((todo) => Todo.fromJson(todo as DecodedJson)).toList();
      expect(todos.length, equals(1));
      expect(todos.first, equals(createdTodo));
    });

    test('GET /todos/:id returns the created todo', () async {
      final res = await get(specificTodoUri(createdTodo.id));
      expect(res.statusCode, HttpStatus.ok);

      final body = res.decodedBodyAs<DecodedJson>();

      final todo = Todo.fromJson(body);
      expect(todo, equals(createdTodo));
    });

    test('PUT /todos/:id to update the created todo', () async {
      const updateTodoDto = UpdateTodoDto(
        title: 'updated title',
        description: 'updated description',
      );
      final res = await put(
        specificTodoUri(createdTodo.id),
        headers: _contentTypeJsonHeaders,
        body: jsonEncode(updateTodoDto.toJson()),
      );
      expect(res.statusCode, HttpStatus.ok);

      final body = res.decodedBodyAs<DecodedJson>();

      final todo = Todo.fromJson(body);
      expect(todo.title, equals(updateTodoDto.title));
      expect(todo.description, equals(updateTodoDto.description));
    });

    test('DELETE /todos/:id to delete the created todo', () async {
      final res = await delete(specificTodoUri(createdTodo.id));
      expect(res.statusCode, HttpStatus.ok);
      expect(res.body, isEmpty);
    });

    test('GET /todos returns empty list of todos', () async {
      final res = await get(todosUri);
      expect(res.statusCode, HttpStatus.ok);
      expect(res.body, equals('[]'));
    });

    group(
        'Not allowed methods return status code ${HttpStatus.methodNotAllowed} and default message |',
        () {
      test(
        'DELETE /todos',
        () async {
          final res = await delete(todosUri);

          expect(res.statusCode, HttpStatus.methodNotAllowed);
          expect(
            res.decodedBodyAsNullable<DecodedJson?>(),
            _notAllowedFailure.toJson(),
          );
        },
      );

      test('HEAD /todos', () async {
        final res = await head(todosUri);

        expect(res.statusCode, HttpStatus.methodNotAllowed);
        expect(
          res.decodedBodyAsNullable<DecodedJson?>(),
          isNull,
        );
      });

      test('PUT /todos', () async {
        final res = await put(todosUri);

        expect(res.statusCode, HttpStatus.methodNotAllowed);
        expect(
          res.decodedBodyAsNullable<DecodedJson?>(),
          _notAllowedFailure.toJson(),
        );
      });

      test('PATCH /todos', () async {
        final res = await patch(todosUri);

        expect(res.statusCode, HttpStatus.methodNotAllowed);
        expect(
          res.decodedBodyAsNullable<DecodedJson?>(),
          _notAllowedFailure.toJson(),
        );
      });
    });
  });
}
