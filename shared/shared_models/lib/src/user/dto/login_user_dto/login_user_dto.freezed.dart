// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginUserDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) pure,
    required TResult Function(String email, String password) valid,
    required TResult Function(
            ValidationFailure failure, String email, String password)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? pure,
    TResult? Function(String email, String password)? valid,
    TResult? Function(ValidationFailure failure, String email, String password)?
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? pure,
    TResult Function(String email, String password)? valid,
    TResult Function(ValidationFailure failure, String email, String password)?
        invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserDto value) pure,
    required TResult Function(_ValidLoginUserDto value) valid,
    required TResult Function(_InvalidLoginUserDto value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserDto value)? pure,
    TResult? Function(_ValidLoginUserDto value)? valid,
    TResult? Function(_InvalidLoginUserDto value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserDto value)? pure,
    TResult Function(_ValidLoginUserDto value)? valid,
    TResult Function(_InvalidLoginUserDto value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_LoginUserDto implements _LoginUserDto {
  const _$_LoginUserDto(
      {required this.email, required this.password, final String? $type})
      : $type = $type ?? 'pure';

  @override
  final String email;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginUserDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) pure,
    required TResult Function(String email, String password) valid,
    required TResult Function(
            ValidationFailure failure, String email, String password)
        invalid,
  }) {
    return pure(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? pure,
    TResult? Function(String email, String password)? valid,
    TResult? Function(ValidationFailure failure, String email, String password)?
        invalid,
  }) {
    return pure?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? pure,
    TResult Function(String email, String password)? valid,
    TResult Function(ValidationFailure failure, String email, String password)?
        invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserDto value) pure,
    required TResult Function(_ValidLoginUserDto value) valid,
    required TResult Function(_InvalidLoginUserDto value) invalid,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserDto value)? pure,
    TResult? Function(_ValidLoginUserDto value)? valid,
    TResult? Function(_InvalidLoginUserDto value)? invalid,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserDto value)? pure,
    TResult Function(_ValidLoginUserDto value)? valid,
    TResult Function(_InvalidLoginUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUserDtoToJson(
      this,
    );
  }
}

abstract class _LoginUserDto implements LoginUserDto {
  const factory _LoginUserDto(
      {required final String email,
      required final String password}) = _$_LoginUserDto;

  @override
  String get email;
  @override
  String get password;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ValidLoginUserDto implements _ValidLoginUserDto {
  const _$_ValidLoginUserDto(
      {required this.email, required this.password, final String? $type})
      : $type = $type ?? 'valid';

  @override
  final String email;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidLoginUserDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) pure,
    required TResult Function(String email, String password) valid,
    required TResult Function(
            ValidationFailure failure, String email, String password)
        invalid,
  }) {
    return valid(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? pure,
    TResult? Function(String email, String password)? valid,
    TResult? Function(ValidationFailure failure, String email, String password)?
        invalid,
  }) {
    return valid?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? pure,
    TResult Function(String email, String password)? valid,
    TResult Function(ValidationFailure failure, String email, String password)?
        invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserDto value) pure,
    required TResult Function(_ValidLoginUserDto value) valid,
    required TResult Function(_InvalidLoginUserDto value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserDto value)? pure,
    TResult? Function(_ValidLoginUserDto value)? valid,
    TResult? Function(_InvalidLoginUserDto value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserDto value)? pure,
    TResult Function(_ValidLoginUserDto value)? valid,
    TResult Function(_InvalidLoginUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidLoginUserDtoToJson(
      this,
    );
  }
}

abstract class _ValidLoginUserDto implements LoginUserDto {
  const factory _ValidLoginUserDto(
      {required final String email,
      required final String password}) = _$_ValidLoginUserDto;

  @override
  String get email;
  @override
  String get password;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_InvalidLoginUserDto implements _InvalidLoginUserDto {
  const _$_InvalidLoginUserDto(this.failure,
      {this.email = '', this.password = '', final String? $type})
      : $type = $type ?? 'invalid';

  @override
  final ValidationFailure failure;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidLoginUserDto &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, failure, email, password);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) pure,
    required TResult Function(String email, String password) valid,
    required TResult Function(
            ValidationFailure failure, String email, String password)
        invalid,
  }) {
    return invalid(failure, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? pure,
    TResult? Function(String email, String password)? valid,
    TResult? Function(ValidationFailure failure, String email, String password)?
        invalid,
  }) {
    return invalid?.call(failure, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? pure,
    TResult Function(String email, String password)? valid,
    TResult Function(ValidationFailure failure, String email, String password)?
        invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failure, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserDto value) pure,
    required TResult Function(_ValidLoginUserDto value) valid,
    required TResult Function(_InvalidLoginUserDto value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserDto value)? pure,
    TResult? Function(_ValidLoginUserDto value)? valid,
    TResult? Function(_InvalidLoginUserDto value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserDto value)? pure,
    TResult Function(_ValidLoginUserDto value)? valid,
    TResult Function(_InvalidLoginUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvalidLoginUserDtoToJson(
      this,
    );
  }
}

abstract class _InvalidLoginUserDto implements LoginUserDto {
  const factory _InvalidLoginUserDto(final ValidationFailure failure,
      {final String email, final String password}) = _$_InvalidLoginUserDto;

  ValidationFailure get failure;
  @override
  String get email;
  @override
  String get password;
}
