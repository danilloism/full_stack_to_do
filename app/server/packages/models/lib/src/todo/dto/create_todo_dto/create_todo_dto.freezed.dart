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

CreateTodoDto _$CreateTodoDtoFromJson(Map<String, dynamic> json) {
  return _CreateTodoDto.fromJson(json);
}

/// @nodoc
mixin _$CreateTodoDto {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_CreateTodoDto implements _CreateTodoDto {
  const _$_CreateTodoDto({required this.title, this.description});

  factory _$_CreateTodoDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTodoDtoFromJson(json);

  @override
  final String title;
  @override
  final String? description;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTodoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTodoDtoToJson(
      this,
    );
  }
}

abstract class _CreateTodoDto implements CreateTodoDto {
  const factory _CreateTodoDto(
      {required final String title,
      final String? description}) = _$_CreateTodoDto;

  factory _CreateTodoDto.fromJson(Map<String, dynamic> json) =
      _$_CreateTodoDto.fromJson;

  @override
  String get title;
  @override
  String? get description;
}
