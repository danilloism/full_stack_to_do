import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_models/src/converters.dart';
import 'package:typedefs/typedefs.dart';
import 'package:uuid_type/uuid_type.dart';

export './dto/create_todo_dto/create_todo_dto.dart';
export './dto/update_todo_dto/update_todo_dto.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

/// Todo model
@Freezed(fromJson: true)
class Todo with _$Todo {
  /// Todo model constructor
  const factory Todo({
    required TodoId id,
    @UserIdConverter() required UserId userId,
    required String title,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverterNullable() DateTime? updatedAt,
    String? description,
    @Default(false) bool completed,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
