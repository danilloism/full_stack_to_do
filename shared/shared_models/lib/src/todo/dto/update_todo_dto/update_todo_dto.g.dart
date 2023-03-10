// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_PureUpdateTodoDtoToJson(
    _$_PureUpdateTodoDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('completed', instance.completed);
  val['runtimeType'] = instance.$type;
  return val;
}

Map<String, dynamic> _$$_InvalidUpdateTodoDtoToJson(
    _$_InvalidUpdateTodoDto instance) {
  final val = <String, dynamic>{
    'failure': instance.failure.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('completed', instance.completed);
  val['runtimeType'] = instance.$type;
  return val;
}

Map<String, dynamic> _$$_ValidUpdateTodoDtoToJson(
    _$_ValidUpdateTodoDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('completed', instance.completed);
  val['runtimeType'] = instance.$type;
  return val;
}
