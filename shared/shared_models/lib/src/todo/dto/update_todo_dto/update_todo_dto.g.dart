// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateTodoDto _$$_UpdateTodoDtoFromJson(Map<String, dynamic> json) =>
    _$_UpdateTodoDto(
      title: json['title'] as String?,
      description: json['description'] as String?,
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$$_UpdateTodoDtoToJson(_$_UpdateTodoDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('completed', instance.completed);
  return val;
}
