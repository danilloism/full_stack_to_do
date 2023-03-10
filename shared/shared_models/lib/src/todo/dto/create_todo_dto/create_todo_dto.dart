import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'create_todo_dto.g.dart';
part 'create_todo_dto.freezed.dart';

@Freezed(fallbackUnion: 'pure')
class CreateTodoDto with _$CreateTodoDto {
  const factory CreateTodoDto.pure({
    required String title,
    String? description,
  }) = _CreateTodoDto;

  const factory CreateTodoDto.valid({
    required String title,
    String? description,
  }) = _ValidCreateTodoDto;

  const factory CreateTodoDto.invalid(
    Failure failure, {
    @Default('') String title,
    @Default(null) String? description,
  }) = _InvalidCreateTodoDto;

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

    if (validator.isValid) {
      return CreateTodoDto.valid(
        title: json['title'] as String,
        description: json['description'] as String?,
      );
    } else {
      return CreateTodoDto.invalid(
        ValidationFailure(
          message: 'Validation failed',
          errors: validator.errors,
        ),
      );
    }
  }
}
