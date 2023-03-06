// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NetworkFailure _$$_NetworkFailureFromJson(Map<String, dynamic> json) =>
    _$_NetworkFailure(
      message: json['message'] as String,
      statusCode: json['status_code'] as int,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ) ??
          const {},
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_NetworkFailureToJson(_$_NetworkFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'errors': instance.errors,
      'type': instance.$type,
    };

_$RequestFailure _$$RequestFailureFromJson(Map<String, dynamic> json) =>
    _$RequestFailure(
      message: json['message'] as String,
      statusCode: json['status_code'] as int? ?? HttpStatus.badRequest,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ) ??
          const {},
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RequestFailureToJson(_$RequestFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'errors': instance.errors,
      'type': instance.$type,
    };

_$ServerFailure _$$ServerFailureFromJson(Map<String, dynamic> json) =>
    _$ServerFailure(
      message: json['message'] as String,
      statusCode: json['status_code'] as int? ?? HttpStatus.internalServerError,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ) ??
          const {},
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ServerFailureToJson(_$ServerFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'errors': instance.errors,
      'type': instance.$type,
    };

_$ValidationFailure _$$ValidationFailureFromJson(Map<String, dynamic> json) =>
    _$ValidationFailure(
      message: json['message'] as String,
      statusCode: json['status_code'] as int? ?? HttpStatus.badRequest,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ) ??
          const {},
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ValidationFailureToJson(_$ValidationFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'errors': instance.errors,
      'type': instance.$type,
    };
