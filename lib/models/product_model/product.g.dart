// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    id: json['id'] as int,
    price: (json['price'] as num).toDouble(),
    description: json['description'] as String,
    imageUrl: json['imageUrl'] as String,
    category: Category.fromJson(json['category'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'category': instance.category,
    };
