// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as int,
      title: json['title'] as String,
      createdAt: const _DateTimeConverter().fromJson(json['createdAt']),
      updatedAt: const _DateTimeConverterNullable().fromJson(json['updatedAt']),
      description: json['description'] as String?,
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': const _DateTimeConverter().toJson(instance.createdAt),
      'updatedAt':
          const _DateTimeConverterNullable().toJson(instance.updatedAt),
      'description': instance.description,
      'completed': instance.completed,
    };
