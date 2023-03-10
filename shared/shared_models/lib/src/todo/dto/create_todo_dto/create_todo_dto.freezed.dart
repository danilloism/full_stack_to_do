// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTodoDto {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) pure,
    required TResult Function(String title, String? description) valid,
    required TResult Function(
            ValidationFailure failure, String title, String? description)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? pure,
    TResult? Function(String title, String? description)? valid,
    TResult? Function(
            ValidationFailure failure, String title, String? description)?
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? pure,
    TResult Function(String title, String? description)? valid,
    TResult Function(
            ValidationFailure failure, String title, String? description)?
        invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PureCreateTodoDto value) pure,
    required TResult Function(ValidCreateTodoDto value) valid,
    required TResult Function(InvalidCreateTodoDto value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PureCreateTodoDto value)? pure,
    TResult? Function(ValidCreateTodoDto value)? valid,
    TResult? Function(InvalidCreateTodoDto value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PureCreateTodoDto value)? pure,
    TResult Function(ValidCreateTodoDto value)? valid,
    TResult Function(InvalidCreateTodoDto value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$PureCreateTodoDto implements PureCreateTodoDto {
  const _$PureCreateTodoDto(
      {required this.title, this.description, final String? $type})
      : $type = $type ?? 'pure';

  @override
  final String title;
  @override
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PureCreateTodoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) pure,
    required TResult Function(String title, String? description) valid,
    required TResult Function(
            ValidationFailure failure, String title, String? description)
        invalid,
  }) {
    return pure(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? pure,
    TResult? Function(String title, String? description)? valid,
    TResult? Function(
            ValidationFailure failure, String title, String? description)?
        invalid,
  }) {
    return pure?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? pure,
    TResult Function(String title, String? description)? valid,
    TResult Function(
            ValidationFailure failure, String title, String? description)?
        invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PureCreateTodoDto value) pure,
    required TResult Function(ValidCreateTodoDto value) valid,
    required TResult Function(InvalidCreateTodoDto value) invalid,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PureCreateTodoDto value)? pure,
    TResult? Function(ValidCreateTodoDto value)? valid,
    TResult? Function(InvalidCreateTodoDto value)? invalid,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PureCreateTodoDto value)? pure,
    TResult Function(ValidCreateTodoDto value)? valid,
    TResult Function(InvalidCreateTodoDto value)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PureCreateTodoDtoToJson(
      this,
    );
  }
}

abstract class PureCreateTodoDto implements CreateTodoDto {
  const factory PureCreateTodoDto(
      {required final String title,
      final String? description}) = _$PureCreateTodoDto;

  @override
  String get title;
  @override
  String? get description;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ValidCreateTodoDto implements ValidCreateTodoDto {
  const _$ValidCreateTodoDto(
      {required this.title, this.description, final String? $type})
      : $type = $type ?? 'valid';

  @override
  final String title;
  @override
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidCreateTodoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) pure,
    required TResult Function(String title, String? description) valid,
    required TResult Function(
            ValidationFailure failure, String title, String? description)
        invalid,
  }) {
    return valid(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? pure,
    TResult? Function(String title, String? description)? valid,
    TResult? Function(
            ValidationFailure failure, String title, String? description)?
        invalid,
  }) {
    return valid?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? pure,
    TResult Function(String title, String? description)? valid,
    TResult Function(
            ValidationFailure failure, String title, String? description)?
        invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PureCreateTodoDto value) pure,
    required TResult Function(ValidCreateTodoDto value) valid,
    required TResult Function(InvalidCreateTodoDto value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PureCreateTodoDto value)? pure,
    TResult? Function(ValidCreateTodoDto value)? valid,
    TResult? Function(InvalidCreateTodoDto value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PureCreateTodoDto value)? pure,
    TResult Function(ValidCreateTodoDto value)? valid,
    TResult Function(InvalidCreateTodoDto value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidCreateTodoDtoToJson(
      this,
    );
  }
}

abstract class ValidCreateTodoDto implements CreateTodoDto {
  const factory ValidCreateTodoDto(
      {required final String title,
      final String? description}) = _$ValidCreateTodoDto;

  @override
  String get title;
  @override
  String? get description;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InvalidCreateTodoDto implements InvalidCreateTodoDto {
  const _$InvalidCreateTodoDto(this.failure,
      {this.title = '', this.description = null, final String? $type})
      : $type = $type ?? 'invalid';

  @override
  final ValidationFailure failure;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidCreateTodoDto &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, failure, title, description);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) pure,
    required TResult Function(String title, String? description) valid,
    required TResult Function(
            ValidationFailure failure, String title, String? description)
        invalid,
  }) {
    return invalid(failure, title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? pure,
    TResult? Function(String title, String? description)? valid,
    TResult? Function(
            ValidationFailure failure, String title, String? description)?
        invalid,
  }) {
    return invalid?.call(failure, title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? pure,
    TResult Function(String title, String? description)? valid,
    TResult Function(
            ValidationFailure failure, String title, String? description)?
        invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failure, title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PureCreateTodoDto value) pure,
    required TResult Function(ValidCreateTodoDto value) valid,
    required TResult Function(InvalidCreateTodoDto value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PureCreateTodoDto value)? pure,
    TResult? Function(ValidCreateTodoDto value)? valid,
    TResult? Function(InvalidCreateTodoDto value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PureCreateTodoDto value)? pure,
    TResult Function(ValidCreateTodoDto value)? valid,
    TResult Function(InvalidCreateTodoDto value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InvalidCreateTodoDtoToJson(
      this,
    );
  }
}

abstract class InvalidCreateTodoDto implements CreateTodoDto {
  const factory InvalidCreateTodoDto(final ValidationFailure failure,
      {final String title, final String? description}) = _$InvalidCreateTodoDto;

  ValidationFailure get failure;
  @override
  String get title;
  @override
  String? get description;
}
