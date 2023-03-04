import 'package:either_dart/either.dart';
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
