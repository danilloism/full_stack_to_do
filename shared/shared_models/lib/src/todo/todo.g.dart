// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as int,
      userId: const UserIdConverter().fromJson(json['user_id']),
      title: json['title'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      description: json['description'] as String?,
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', const UserIdConverter().toJson(instance.userId));
  val['title'] = instance.title;
  val['created_at'] = instance.createdAt.toIso8601String();
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('description', instance.description);
  val['completed'] = instance.completed;
  return val;
}
