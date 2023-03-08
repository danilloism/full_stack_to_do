// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: const UserIdConverter().fromJson(json['id']),
      email: json['email'] as String,
      name: json['name'] as String,
      createdAt: const DateTimeConverter().fromJson(json['created_at']),
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': const UserIdConverter().toJson(instance.id),
      'email': instance.email,
      'name': instance.name,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
    };
