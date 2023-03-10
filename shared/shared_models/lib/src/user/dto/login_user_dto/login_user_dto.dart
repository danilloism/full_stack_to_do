import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'login_user_dto.g.dart';
part 'login_user_dto.freezed.dart';

@Freezed(copyWith: false)
class LoginUserDto with _$LoginUserDto {
  const factory LoginUserDto.pure({
    required String email,
    required String password,
  }) = _LoginUserDto;

  const factory LoginUserDto.valid({
    required String email,
    required String password,
  }) = _ValidLoginUserDto;

  const factory LoginUserDto.invalid(
    ValidationFailure failure, {
    @Default('') String email,
    @Default('') String password,
  }) = _InvalidLoginUserDto;

  factory LoginUserDto.fromJson(Map<String, dynamic> json) {
    final validator = JsonBodyValidator(json)
      ..addEmailValidation()
      ..addPasswordValidation();

    if (validator.isValid) {
      return LoginUserDto.valid(
        email: json['email'] as String,
        password: json['password'] as String,
      );
    }

    return LoginUserDto.invalid(
      ValidationFailure(
        message: 'Validation failed',
        errors: validator.errors,
      ),
    );

    // return Left(

    // );
  }
}
