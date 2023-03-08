import 'dart:developer';

import 'package:data_source/data_source.dart';
import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:models/models.dart';
import 'package:typedefs/typedefs.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<Todo>>> getAll();
  Future<Either<Failure, Todo>> getById(TodoId id);
  Future<Either<Failure, Todo>> create(CreateTodoDto dto);
  Future<Either<Failure, Todo>> update({
    required TodoId id,
    required UpdateTodoDto dto,
  });
  Future<Either<Failure, void>> deleteById(TodoId id);
}

class TodoRepositoryImpl implements TodoRepository {
  const TodoRepositoryImpl(this.dataSource);

  final TodoDataSource dataSource;

  @override
  Future<Either<Failure, Todo>> create(CreateTodoDto dto) async {
    try {
      final todo = await dataSource.create(dto);

      return Right(todo);
    } on ServerException catch (e) {
      log(e.message);
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> deleteById(TodoId id) async {
    try {
      final deleted = await dataSource.deleteById(id);

      return Right(deleted);
    } on ServerException catch (e) {
      log(e.message);
      return Left(ServerFailure(message: e.message));
    } on NotFoundException catch (e) {
      log(e.message);
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getAll() async {
    try {
      final todos = await dataSource.getAll();

      return Right(todos);
    } on ServerException catch (e) {
      log(e.message);
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Todo>> getById(TodoId id) async {
    try {
      final todo = await dataSource.getById(id);

      return Right(todo);
    } on NotFoundException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on ServerException catch (e) {
      log(e.message);
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Todo>> update({
    required TodoId id,
    required UpdateTodoDto dto,
  }) async {
    try {
      final todo = await dataSource.update(id: id, todo: dto);

      return Right(todo);
    } on NotFoundException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on ServerException catch (e) {
      log(e.message);
      return Left(ServerFailure(message: e.message));
    }
  }
}
