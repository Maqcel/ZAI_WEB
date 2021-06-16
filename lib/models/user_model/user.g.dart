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
    role: _$enumDecode(_$RolesEnumMap, json['role']),
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'name': instance.name,
      'role': _$RolesEnumMap[instance.role],
      'email': instance.email,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$RolesEnumMap = {
  Roles.ROLE_ADMIN: 'ROLE_ADMIN',
  Roles.ROLE_USER: 'ROLE_USER',
};
