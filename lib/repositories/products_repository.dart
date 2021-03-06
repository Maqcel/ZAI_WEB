import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:zai/config/injection/injection.dart';
import 'package:zai/models/category_model/category.dart';
import 'package:zai/models/product_model/product.dart';
import 'package:zai/repositories/auth_repository.dart';
import 'package:zai/values/constants.dart';

@lazySingleton
class ProductsRepository {
  final AuthRepository _authRepository = getIt.get();
  List<Product> _products = [];

  List<Product> get getCurrentProducts => _products;

  Future<void> getAllProducts() async {
    try {
      String token = 'Bearer ${_authRepository.currentUser.token}';
      Uri url = Uri.parse(Constants.getAllProductsRequest);
      Map<String, String> header = {};
      header.addAll(Constants.header);
      header['Authorization'] = token;
      final response = await http.get(
        url,
        headers: header,
      );
      final List<dynamic> responseBody = json.decode(response.body);
      List<Product> parser = [];
      responseBody.forEach(
        (element) {
          parser.add(
            new Product.fromJson(
              element as Map<String, dynamic>,
            ),
          );
        },
      );
      _products = parser;
    } catch (_) {
      _products = [];
    }
  }

  Future<void> getProductsFromCategory(Category category) async {
    try {
      String token = 'Bearer ${_authRepository.currentUser.token}';
      Uri url = Uri.parse(
        '${Constants.getProductsByCategoryRequest}/${category.id}',
      );
      Map<String, String> header = {};
      header.addAll(Constants.header);
      header['Authorization'] = token;
      final response = await http.get(
        url,
        headers: header,
      );
      final List<dynamic> responseBody = json.decode(response.body);
      List<Product> parser = [];
      responseBody.forEach(
        (element) {
          parser.add(
            new Product.fromJson(
              element as Map<String, dynamic>,
            ),
          );
        },
      );
      _products = parser;
    } catch (_) {
      _products = [];
    }
  }

  Future<void> deleteSelectedProduct(Product product) async {
    try {
      String token = 'Bearer ${_authRepository.currentUser.token}';
      Uri url = Uri.parse('${Constants.deleteProductRequest}/${product.id}');
      Map<String, String> header = {};
      header.addAll(Constants.header);
      header['Authorization'] = token;
      await http.delete(
        url,
        headers: header,
      );
      _products.removeWhere((element) => element.id == product.id);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addProduct(Product product) async {
    try {
      String token = 'Bearer ${_authRepository.currentUser.token}';
      Uri url = Uri.parse(Constants.productCreateRequest);
      Map<String, String> header = {};
      header.addAll(Constants.header);
      header['Authorization'] = token;
      await http.post(
        url,
        headers: header,
        body: json.encode(
          {
            "name": product.name,
            "price": product.price,
            "description": product.description,
            "category_id": product.category.id.toString(),
            "image": product.image,
          },
        ),
      );
      _products.add(product);
    } catch (e) {
      print(e);
    }
  }
}
