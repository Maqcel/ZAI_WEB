import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:zai/config/exceptions/exceptions.dart';
import 'package:zai/models/user_model/user.dart';

import '../values/constants.dart';

@lazySingleton
class AuthRepository {
  late User _user;

  User get currentUser => _user;

  Future<Either<AppExceptions, User>> logIn({
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
      if (responseBody.containsKey('error'))
        throw new AuthException.logInFailure();
      User user = User.fromJson(responseBody);
      _user = user;
      return right(user);
    } on AuthException catch (error) {
      return left(error);
    }
  }

  Future<Either<AppExceptions, User>> signUp({
    required String email,
    required String password,
    required String firstName,
  }) async {
    try {
      Uri url = Uri.parse(Constants.usersSignUpRequest);
      final response = await http.post(
        url,
        headers: Constants.header,
        body: json.encode(
          {
            "first_name": firstName,
            "email": email,
            "user_type": 2,
            "password": password,
            "role": ["user"]
          },
        ),
      );

      final Map<String, dynamic> responseBody = json.decode(response.body);
      if (responseBody.containsKey('error') ||
          responseBody['code'].toString() != '200')
        throw new AuthException.signUpFailure(
            responseBody['message'].toString());
      final result = await logIn(email: email, password: password);
      if (result.isRight()) {
        result.fold((l) => null, (r) => _user = r);
      }
      return result;
    } on AuthException catch (e) {
      return left(e);
    }
  }
}
