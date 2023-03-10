import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'login_user_dto.g.dart';
part 'login_user_dto.freezed.dart';

@Freezed(toJson: false, copyWith: false, toStringOverride: false)
class LoginUserDto with _$LoginUserDto {
  const factory LoginUserDto({
    required String email,
    required String password,
  }) = _LoginUserDto;

  factory LoginUserDto.fromJson(Map<String, dynamic> json) =>
      _$LoginUserDtoFromJson(json);

  static Either<ValidationFailure, LoginUserDto> validated(
    Map<String, dynamic> json,
  ) {
    final validator = JsonBodyValidator(json)
      ..addEmailValidation()
      ..addPasswordValidation();

    if (validator.isValid) return Right(LoginUserDto.fromJson(json));

    return Left(
      ValidationFailure(
        message: 'Validation failed',
        errors: validator.errors,
      ),
    );
  }
}
