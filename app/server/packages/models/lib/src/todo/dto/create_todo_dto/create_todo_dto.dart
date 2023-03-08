import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';
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
    final validator = MapValidator(json)
      ..addCustomValidator<String>(
        fieldName: 'title',
        validation: (value) {
          if (value == null || value.isEmpty) {
            return 'Title is required';
          }

          return null;
        },
      )
      ..addCustomValidator<String>(
        fieldName: 'description',
        validation: (value) {
          if (value != null && value.isEmpty) {
            json.remove('description');
          }

          return null;
        },
      );

    if (validator.isValid) {
      return Right(CreateTodoDto.fromJson(json));
    }

    return Left(
      ValidationFailure(message: 'Validation failed', errors: validator.errors),
    );
  }
}
