import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'create_todo_dto.g.dart';
part 'create_todo_dto.freezed.dart';

@Freezed(copyWith: false, toStringOverride: false)
class CreateTodoDto with _$CreateTodoDto {
  const factory CreateTodoDto({
    required String title,
    String? description,
  }) = _CreateTodoDto;

  factory CreateTodoDto.fromJson(Map<String, dynamic> json) =>
      _$CreateTodoDtoFromJson(json);

  static Either<ValidationFailure, CreateTodoDto> validated(
    Map<String, dynamic> json,
  ) {
    final validator = JsonBodyValidator(json)
      ..addStringValidation(
        'title',
        nullable: false,
        notEmpty: true,
      )
      ..addStringValidation(
        'description',
        nullable: true,
        notEmpty: true,
      );

    try {
      const failureMessage = 'Validation failed';

      if (validator.isValid) {
        try {
          return Right(CreateTodoDto.fromJson(json));
        } catch (e) {
          throw const ValidationException(
            failureMessage,
            {
              'body': ['invalid body'],
            },
          );
        }
      } else {
        throw ValidationException(failureMessage, validator.errors);
      }
    } on ValidationException catch (e) {
      return Left(
        ValidationFailure(
          message: e.message,
          errors: e.errors,
        ),
      );
    }
  }
}
