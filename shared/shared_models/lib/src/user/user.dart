// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_models/src/converters.dart';
import 'package:shared_typedefs/shared_typedefs.dart';

export './dto/create_user_dto/create_user_dto.dart';
export './dto/login_user_dto/login_user_dto.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @UserIdConverter() required UserId id,
    required String email,
    required String name,
    required DateTime createdAt,
    @Default('') @JsonKey(includeToJson: false) String password,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
