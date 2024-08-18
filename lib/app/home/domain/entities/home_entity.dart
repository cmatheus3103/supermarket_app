import 'banner_entity.dart';
import 'category_entity.dart';
import 'product_entity.dart';
import 'user_entity.dart';

class HomeEntity {
  final List<CategoryEntity> categories;

  final UserEntity userEntity;
  final List<BannerEntity> banners;
  final List<ProductEntity> products;

  HomeEntity({
    required this.categories,
    required this.userEntity,
    required this.banners,
    required this.products,
  });
}
