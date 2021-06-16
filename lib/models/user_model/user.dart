import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zai/models/roles_enum.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required final String token,
    required final int id,
    required final String name,
    required final Roles role,
    required final String email,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
