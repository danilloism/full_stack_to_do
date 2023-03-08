import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';
import 'package:uuid_type/uuid_type.dart';

class DateTimeConverter extends JsonConverter<DateTime, dynamic> {
  const DateTimeConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is DateTime) return json;
    return DateTime.parse(json as String);
  }

  @override
  String toJson(DateTime object) {
    return object.toIso8601String();
  }
}

class DateTimeConverterNullable extends JsonConverter<DateTime?, dynamic> {
  const DateTimeConverterNullable();

  @override
  DateTime? fromJson(dynamic json) {
    if (json == null) return null;
    return const DateTimeConverter().fromJson(json);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    return const DateTimeConverter().toJson(object);
  }
}

class UserIdConverter extends JsonConverter<UserId, dynamic> {
  const UserIdConverter();

  @override
  UserId fromJson(dynamic json) => Uuid.parse(json as String);

  @override
  String toJson(UserId object) => object.toString();
}