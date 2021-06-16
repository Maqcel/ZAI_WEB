import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:zai/config/exceptions/exceptions.dart';
import 'package:zai/models/user_model/user.dart';

import '../values/constants.dart';

@lazySingleton
class AuthRepository {
  Future<Either<AppExceptions, http.Response>> logIn({
    required String email,
    required String password,
  }) async {
    try {
      Uri url = Uri.parse(Constants.usersLoginRequest);
      final response = await http.post(
        url,
        headers: Constants.header,
        body: json.encode(
          {
            "email": email,
            "password": password,
          },
        ),
      );
      final Map<String, dynamic> responseBody = json.decode(response.body);
      print('\n\n');
      print(responseBody);
      print('\n\n');
      if (responseBody.containsKey('error'))
        throw new AuthException.logInFailure();
      return right(response);
    } on AuthException {
      return left(const AuthException.logInFailure());
    }
  }

  Future<void> signUpRequest({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phone,
  }) async {
    try {
      Uri url = Uri.parse(Constants.usersSignUpRequest);
      final response = await http.post(
        url,
        headers: Constants.header,
        body: json.encode(
          {
            "first_name": firstName,
            "last_name": lastName,
            "phone": phone,
            "email": email,
            "user_type": 2,
            "password": password,
            "role": ["user"]
          },
        ),
      );
      final responseBody = json.decode(response.body);
      print(responseBody);
    } catch (error) {
      throw error;
    }
  }
}
