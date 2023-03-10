import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_typedefs/shared_typedefs.dart';

class UserIdConverter extends JsonConverter<UserId, dynamic> {
  const UserIdConverter();

  @override
  UserId fromJson(dynamic json) => UserId.parse(json as String);

  @override
  String toJson(UserId object) => object.toString();
}
