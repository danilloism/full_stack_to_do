// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$PureCreateTodoDtoToJson(_$PureCreateTodoDto instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['runtimeType'] = instance.$type;
  return val;
}

Map<String, dynamic> _$$ValidCreateTodoDtoToJson(
    _$ValidCreateTodoDto instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['runtimeType'] = instance.$type;
  return val;
}

Map<String, dynamic> _$$InvalidCreateTodoDtoToJson(
    _$InvalidCreateTodoDto instance) {
  final val = <String, dynamic>{
    'failure': instance.failure.toJson(),
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['runtimeType'] = instance.$type;
  return val;
}
