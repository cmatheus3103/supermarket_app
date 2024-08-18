class ProductEntity {
  final String name;
  final String imageUrl;
  final String description;
  final String shopName;
  final double discountPrice;
  final double price;
  final double rate;
  final List<String> images;

  ProductEntity({
    required this.name,
    required this.images,
    required this.imageUrl,
    required this.description,
    required this.shopName,
    required this.rate,
    required this.discountPrice,
    required this.price,
  });
}
