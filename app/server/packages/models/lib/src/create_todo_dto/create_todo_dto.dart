import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';

part 'create_todo_dto.g.dart';
part 'create_todo_dto.freezed.dart';

@freezed
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
    final ValidationErrors errors = {};

    final title = json['title'] as String?;
    if (title == null || title.isEmpty) {
      errors['title'] = ['Title is required'];
    }

    final description = json['description'] as String?;
    if (description != null && description.isEmpty) {
      json.remove('description');
    }

    if (errors.isEmpty) {
      return Right(CreateTodoDto.fromJson(json));
    }

    return Left(
      ValidationFailure(message: 'Validation failed', errors: errors),
    );
  }
}
