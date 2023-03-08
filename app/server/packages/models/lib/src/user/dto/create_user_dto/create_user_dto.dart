import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validator/validator.dart';

part 'create_user_dto.g.dart';
part 'create_user_dto.freezed.dart';

@Freezed(toJson: false, copyWith: false, toStringOverride: false)
class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto({
    required String email,
    required String name,
    required String password,
  }) = _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);

  static Either<ValidationFailure, CreateUserDto> validated(
    Map<String, dynamic> json,
  ) {
    final validator = MapValidator(json)
      ..addNameValidation()
      ..addEmailValidation()
      ..addPasswordValidation();

    if (validator.isValid) return Right(CreateUserDto.fromJson(json));

    return Left(
      ValidationFailure(
        message: 'Validation failed',
        errors: validator.errors,
      ),
    );
  }
}
