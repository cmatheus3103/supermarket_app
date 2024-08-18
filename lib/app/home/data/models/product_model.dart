import '../../domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.name,
    required super.discountPrice,
    required super.price,
    required super.rate,
    required super.imageUrl,
    required super.description,
    required super.shopName,
    required super.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'] ?? '',
      imageUrl: json['imageURL'] ?? '',
      discountPrice: json['discountPrice'] ?? '',
      price: json['price'] ?? '',
      rate: json['rate'] ?? '',
      description: json['description'] ?? '',
      shopName: json['shopName'] ?? '',
      images: (json['images'] as List).map((data) => data.toString()).toList(),
    );
  }
}
