// ignore_for_file: flutter_style_todos

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/converters.dart';
import 'package:typedefs/typedefs.dart';
import 'package:uuid_type/uuid_type.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

/// Todo model
@freezed
class Todo with _$Todo {
  /// Todo model constructor
  const factory Todo({
    required TodoId id,
    @UserIdConverter() required UserId userId,
    required String title,
    @_DateTimeConverter() required DateTime createdAt,
    @_DateTimeConverterNullable() DateTime? updatedAt,
    String? description,
    @Default(false) bool completed,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

class _DateTimeConverter extends JsonConverter<DateTime, dynamic> {
  const _DateTimeConverter();

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

class _DateTimeConverterNullable extends JsonConverter<DateTime?, dynamic> {
  const _DateTimeConverterNullable();

  @override
  DateTime? fromJson(dynamic json) {
    if (json == null) return null;
    return const _DateTimeConverter().fromJson(json);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    return const _DateTimeConverter().toJson(object);
  }
}
