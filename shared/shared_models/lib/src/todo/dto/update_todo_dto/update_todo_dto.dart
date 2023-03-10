import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'update_todo_dto.freezed.dart';
part 'update_todo_dto.g.dart';

@Freezed(
  copyWith: false,
  toStringOverride: false,
  fromJson: false,
  toJson: true,
)
class UpdateTodoDto with _$UpdateTodoDto {
  const factory UpdateTodoDto.pure({
    String? title,
    String? description,
    bool? completed,
  }) = _PureUpdateTodoDto;

  const factory UpdateTodoDto.invalid(
    ValidationFailure failure, {
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

    try {
      const failureMessage = 'Validation failed';

      if (validator.isValid) {
        try {
          return UpdateTodoDto.valid(
            title: json['title'] as String?,
            completed: json['completed'] as bool?,
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
      return UpdateTodoDto.invalid(
        ValidationFailure(
          message: e.message,
          errors: e.errors,
        ),
      );
    }
  }
}
