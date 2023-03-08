// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateTodoDto _$UpdateTodoDtoFromJson(Map<String, dynamic> json) {
  return _UpdateTodoDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateTodoDto {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_UpdateTodoDto implements _UpdateTodoDto {
  const _$_UpdateTodoDto({this.title, this.description, this.completed});

  factory _$_UpdateTodoDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateTodoDtoFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? completed;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTodoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, completed);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateTodoDtoToJson(
      this,
    );
  }
}

abstract class _UpdateTodoDto implements UpdateTodoDto {
  const factory _UpdateTodoDto(
      {final String? title,
      final String? description,
      final bool? completed}) = _$_UpdateTodoDto;

  factory _UpdateTodoDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateTodoDto.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get completed;
}
