// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: const UserIdConverter().fromJson(json['id']),
      email: json['email'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const UserIdConverter().toJson(instance.id));
  val['email'] = instance.email;
  val['name'] = instance.name;
  val['created_at'] = instance.createdAt.toIso8601String();
  return val;
}
