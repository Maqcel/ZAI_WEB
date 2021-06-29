import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zai/models/category_model/category.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required final int id,
    required final String name,
    required final String price,
    required final String description,
    required final String image,
    required final Category category,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
