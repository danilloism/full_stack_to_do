import 'dart:async';
import 'dart:io';

import 'package:server/controller/http_controller.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';
import 'package:repository/repository.dart';
import 'package:typedefs/typedefs.dart';

class TodoController extends HttpController {
  TodoController(this._repo);

  final TodoRepository _repo;

  @override
  FutureOr<Response> create(Request req) async {
    final parsedBody = await parseJson(req);

    if (parsedBody.isLeft) {
      return mapFailureToResponse(parsedBody.left);
    }

    final json = parsedBody.right;
    final dto = CreateTodoDto.validated(json);

    if (dto.isLeft) {
      return mapFailureToResponse(dto.left);
    }

    final res = await _repo.create(dto.right);

    return res.fold(
      mapFailureToResponse,
      (success) => Response.json(
        body: success.toJson(),
        statusCode: HttpStatus.created,
      ),
    );
  }

  @override
  FutureOr<Response> getAll(Request req) async {
    final res = await _repo.getAll();

    return res.fold(
      mapFailureToResponse,
      (success) => Response.json(body: success.map((e) => e.toJson()).toList()),
    );
  }

  @override
  FutureOr<Response> getOne(Request req, String id) async {
    final todoId = mapTodoId(id);

    if (todoId.isLeft) {
      return mapFailureToResponse(todoId.left);
    }

    final res = await _repo.getById(todoId.right);

    return res.fold(
      mapFailureToResponse,
      (success) => Response.json(body: success.toJson()),
    );
  }

  @override
  FutureOr<Response> remove(Request req, String id) async {
    final todoId = mapTodoId(id);

    if (todoId.isLeft) {
      return mapFailureToResponse(todoId.left);
    }

    final res = await _repo.deleteById(todoId.right);

    return res.fold(
      mapFailureToResponse,
      (success) => Response.json(body: null),
    );
  }

  @override
  FutureOr<Response> update(Request req, String id) async {
    final todoId = mapTodoId(id);
    if (todoId.isLeft) {
      return mapFailureToResponse(todoId.left);
    }

    final parsedBody = await parseJson(req);

    if (parsedBody.isLeft) {
      return mapFailureToResponse(parsedBody.left);
    }

    final json = parsedBody.right;
    final dto = UpdateTodoDto.validated(json);

    if (dto.isLeft) {
      return mapFailureToResponse(dto.left);
    }

    final res = await _repo.update(
      id: todoId.right,
      dto: dto.right,
    );

    return res.fold(
      mapFailureToResponse,
      (success) => Response.json(
        body: success.toJson(),
      ),
    );
  }
}
