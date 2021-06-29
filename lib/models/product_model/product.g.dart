// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    id: json['id'] as int,
    name: json['name'] as String,
    price: json['price'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    category: Category.fromJson(json['category'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'image': instance.image,
      'category': instance.category,
    };
