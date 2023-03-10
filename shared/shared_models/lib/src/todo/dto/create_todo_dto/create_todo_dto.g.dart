// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTodoDto _$$_CreateTodoDtoFromJson(Map<String, dynamic> json) =>
    _$_CreateTodoDto(
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_CreateTodoDtoToJson(_$_CreateTodoDto instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  return val;
}
