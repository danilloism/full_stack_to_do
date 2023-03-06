import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';

part 'update_todo_dto.g.dart';
part 'update_todo_dto.freezed.dart';

@freezed
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
    final NetworkErrors errors = {};

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
