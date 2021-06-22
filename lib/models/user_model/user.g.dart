// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    token: json['token'] as String,
    id: json['id'] as int,
    name: json['name'] as String,
    roles: json['roles'] as List<dynamic>,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'name': instance.name,
      'roles': instance.roles,
      'email': instance.email,
    };
