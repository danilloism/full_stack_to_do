// ignore_for_file: omit_local_variable_types

import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';

part 'todo_dto.freezed.dart';
part 'todo_dto.g.dart';

/// Dto for creating Todos
@Freezed(unionKey: 'type')
class TodoDto with _$TodoDto {
  const factory TodoDto.create({
    required String title,
    String? description,
  }) = CreateTodoDto;

  const factory TodoDto.update({
    String? title,
    String? description,
    bool? completed,
  }) = UpdateTodoDto;

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);
}

extension CreateValidation on CreateTodoDto {
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

extension UpdateValidation on UpdateTodoDto {
  static Either<ValidationFailure, UpdateTodoDto> validated(
    Map<String, dynamic> json,
  ) {
    final ValidationErrors errors = {};

    final title = json['title'] as String?;
    if (title == null || title.isEmpty) {
      errors['title'] = ['At least one field must be provided'];
    }

    if (json['description'] == null) {
      errors['description'] = ['At least one field must be provided'];
    }

    if (json['completed'] == null) {
      errors['completed'] = ['At least one field must be provided'];
    }

    if (errors.length < 3) {
      return Right(UpdateTodoDto.fromJson(json));
    }

    return Left(
      ValidationFailure(message: 'Validation failed', errors: errors),
    );
  }
}
