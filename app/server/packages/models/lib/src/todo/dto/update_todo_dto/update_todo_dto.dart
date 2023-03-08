import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';
import 'package:validator/validator.dart';

part 'update_todo_dto.g.dart';
part 'update_todo_dto.freezed.dart';

@Freezed(copyWith: false, toStringOverride: false)
class UpdateTodoDto with _$UpdateTodoDto {
  const factory UpdateTodoDto({
    String? title,
    String? description,
    bool? completed,
  }) = _UpdateTodoDto;

  factory UpdateTodoDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateTodoDtoFromJson(json);

  static Either<ValidationFailure, UpdateTodoDto> validated(
    Map<String, dynamic> json,
  ) {
    final validator = MapValidator(json)
      ..addMinNumberOfFieldsRequiredValidaton(
        fields: {'title', 'description', 'completed'},
        min: 1,
      )
      ..addNullableAndNotEmptyValidation('title')
      ..addNullableAndNotEmptyValidation('description');

    try {
      const failureMessage = 'Validation failed';

      if (validator.isValid) {
        try {
          return Right(UpdateTodoDto.fromJson(json));
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
