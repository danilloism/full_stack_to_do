import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:shared_typedefs/shared_typedefs.dart';
export 'package:shared_typedefs/shared_typedefs.dart';

typedef ValidationErrors = Map<String, List<String>>;

typedef Validator<ValueType extends Object?> = String? Function(
  ValueType? value,
);

Either<Failure, TodoId> mapTodoId(String id) {
  try {
    final todoId = int.tryParse(id);

    if (todoId == null) {
      throw const BadRequestException(
        message: 'Invalid id',
        errors: {
          'id': ['the id must contain only numbers']
        },
      );
    }

    return Right(todoId);
  } on BadRequestException catch (e) {
    return Left(
      ValidationFailure(
        message: e.message,
        statusCode: e.statusCode,
        errors: e.errors,
      ),
    );
  }
}
