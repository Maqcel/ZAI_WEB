import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/models/category_model/category.dart';
import 'package:zai/values/constants.dart';

import 'auth_repository.dart';

@lazySingleton
class CategoryRepository {
  final AuthRepository _authRepository = getIt.get();
  List<Category> _category = [];

  List<Category> get getCurrentCategories => _category;

  Future<void> getAllCategories() async {
    try {
      String token = 'Bearer ${_authRepository.currentUser.token}';
      Uri url = Uri.parse(Constants.getCategoryListsRequest);
      Map<String, String> header = {};
      header.addAll(Constants.header);
      header['Authorization'] = token;
      final response = await http.get(
        url,
        headers: header,
      );
      final List<dynamic> responseBody = json.decode(response.body);
      List<Category> parser = [];
      responseBody.forEach(
        (element) {
          parser.add(
            new Category.fromJson(
              element as Map<String, dynamic>,
            ),
          );
        },
      );
      _category = parser;
    } catch (_) {
      _category = [];
    }
  }
}
