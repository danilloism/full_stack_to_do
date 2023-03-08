// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) {
  return _CreateUserDto.fromJson(json);
}

/// @nodoc
mixin _$CreateUserDto {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_CreateUserDto implements _CreateUserDto {
  const _$_CreateUserDto(
      {required this.email, required this.name, required this.password});

  factory _$_CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserDtoFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final String password;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name, password);
}

abstract class _CreateUserDto implements CreateUserDto {
  const factory _CreateUserDto(
      {required final String email,
      required final String name,
      required final String password}) = _$_CreateUserDto;

  factory _CreateUserDto.fromJson(Map<String, dynamic> json) =
      _$_CreateUserDto.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  String get password;
}
