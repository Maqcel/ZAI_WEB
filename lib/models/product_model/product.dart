import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zai/models/category_model/category.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required final int id,
    required final double price,
    required final String description,
    required final String imageUrl,
    required final Category category,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
