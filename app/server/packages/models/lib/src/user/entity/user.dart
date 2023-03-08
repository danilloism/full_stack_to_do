// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/converters.dart';
import 'package:typedefs/typedefs.dart';
import 'package:uuid_type/uuid_type.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @UserIdConverter() required UserId id,
    required String email,
    required String name,
    @DateTimeConverter() required DateTime createdAt,
    @Default('') @JsonKey(includeToJson: false) String password,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
