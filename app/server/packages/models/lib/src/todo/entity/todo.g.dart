// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as int,
      userId: const UserIdConverter().fromJson(json['user_id']),
      title: json['title'] as String,
      createdAt: const _DateTimeConverter().fromJson(json['created_at']),
      updatedAt:
          const _DateTimeConverterNullable().fromJson(json['updated_at']),
      description: json['description'] as String?,
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': const UserIdConverter().toJson(instance.userId),
      'title': instance.title,
      'created_at': const _DateTimeConverter().toJson(instance.createdAt),
      'updated_at':
          const _DateTimeConverterNullable().toJson(instance.updatedAt),
      'description': instance.description,
      'completed': instance.completed,
    };
