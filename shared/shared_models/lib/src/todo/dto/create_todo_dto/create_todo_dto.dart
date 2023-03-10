import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'create_todo_dto.g.dart';
part 'create_todo_dto.freezed.dart';

@Freezed(copyWith: false, toStringOverride: false)
class CreateTodoDto with _$CreateTodoDto {
  const factory CreateTodoDto.pure({
    required String title,
    String? description,
  }) = PureCreateTodoDto;

  const factory CreateTodoDto.valid({
    required String title,
    String? description,
  }) = ValidCreateTodoDto;

  const factory CreateTodoDto.invalid(
    ValidationFailure failure, {
    @Default('') String title,
    @Default(null) String? description,
  }) = InvalidCreateTodoDto;

  factory CreateTodoDto.fromJson(Map<String, dynamic> json) {
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
          return CreateTodoDto.valid(
            title: json['title'] as String,
            description: json['description'] as String?,
          );
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
      // return Left(

      // );
      return CreateTodoDto.invalid(
        ValidationFailure(
          message: e.message,
          errors: e.errors,
        ),
      );
    }
  }
}
