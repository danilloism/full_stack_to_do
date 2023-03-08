// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_NetworkFailureToJson(_$_NetworkFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };

Map<String, dynamic> _$$_RequestFailureToJson(_$_RequestFailure instance) {
  final val = <String, dynamic>{
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  return val;
}

Map<String, dynamic> _$$_ServerFailureToJson(_$_ServerFailure instance) {
  final val = <String, dynamic>{
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  return val;
}

Map<String, dynamic> _$$_ValidationFailureToJson(
        _$_ValidationFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };

Map<String, dynamic> _$$_NotAllowedFailureToJson(
    _$_NotAllowedFailure instance) {
  final val = <String, dynamic>{
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  return val;
}
