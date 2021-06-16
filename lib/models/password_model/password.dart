import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
class Password with _$Password {
  const factory Password(String value) = _Password;

  const Password._();

  bool isValid() => RegExp("^(?=.*)(?=.{5,})").hasMatch(value);

  bool isValidLogin() => value.isNotEmpty;
}
