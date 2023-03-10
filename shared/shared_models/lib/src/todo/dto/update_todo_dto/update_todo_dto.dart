import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'update_todo_dto.freezed.dart';
part 'update_todo_dto.g.dart';

@Freezed(fallbackUnion: 'pure')
class UpdateTodoDto with _$UpdateTodoDto {
  const factory UpdateTodoDto.pure({
    String? title,
    String? description,
    bool? completed,
  }) = _PureUpdateTodoDto;

  const factory UpdateTodoDto.invalid(
    Failure failure, {
    @Default(null) String? title,
    @Default(null) String? description,
    @Default(null) bool? completed,
  }) = _InvalidUpdateTodoDto;

  const factory UpdateTodoDto.valid({
    String? title,
    String? description,
    bool? completed,
  }) = _ValidUpdateTodoDto;

  factory UpdateTodoDto.fromJson(Map<String, dynamic> json) {
    final validator = JsonBodyValidator(json)
      ..addMinNumberOfFieldsRequiredValidaton(
        keys: {'title', 'description', 'completed'},
        min: 1,
      )
      ..addStringValidation(
        'title',
        nullable: true,
        notEmpty: true,
      )
      ..addStringValidation(
        'description',
        nullable: true,
        notEmpty: true,
      )
      ..addTypeValidation<bool>('completed');

    if (validator.isValid) {
      return UpdateTodoDto.valid(
        title: json['title'] as String?,
        completed: json['completed'] as bool?,
        description: json['description'] as String?,
      );
    } else {
      return UpdateTodoDto.invalid(
        ValidationFailure(
          message: 'Validation failed',
          errors: validator.errors,
        ),
      );
    }
  }
}
