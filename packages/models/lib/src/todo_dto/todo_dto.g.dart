// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTodoDto _$$CreateTodoDtoFromJson(Map<String, dynamic> json) =>
    _$CreateTodoDto(
      title: json['title'] as String,
      description: json['description'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CreateTodoDtoToJson(_$CreateTodoDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'type': instance.$type,
    };

_$UpdateTodoDto _$$UpdateTodoDtoFromJson(Map<String, dynamic> json) =>
    _$UpdateTodoDto(
      title: json['title'] as String?,
      description: json['description'] as String?,
      completed: json['completed'] as bool?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UpdateTodoDtoToJson(_$UpdateTodoDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
      'type': instance.$type,
    };
