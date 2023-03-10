import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'create_user_dto.g.dart';
part 'create_user_dto.freezed.dart';

@Freezed(fallbackUnion: 'pure')
class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto.pure({
    required String email,
    required String name,
    required String password,
  }) = _CreateUserDto;

  const factory CreateUserDto.valid({
    required String email,
    required String name,
    required String password,
  }) = _ValidCreateUserDto;

  const factory CreateUserDto.invalid(
    Failure failure, {
    @Default('') String email,
    @Default('') String name,
    @Default('') String password,
  }) = _InvalidCreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) {
    final validator = JsonBodyValidator(json)
      ..addStringValidation(
        'name',
        nullable: false,
        notEmpty: true,
      )
      ..addEmailValidation()
      ..addPasswordValidation();

    if (validator.isValid) {
      return CreateUserDto.valid(
        email: json['email'] as String,
        name: json['name'] as String,
        password: json['password'] as String,
      );
    }

    return CreateUserDto.invalid(
      ValidationFailure(
        message: 'Validation failed',
        errors: validator.errors,
      ),
    );
  }
}
