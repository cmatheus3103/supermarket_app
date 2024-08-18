import 'package:supermarket_app/app/home/data/models/product_model.dart';

import '../../domain/entities/home_entity.dart';

import 'banner_model.dart';
import 'category_model.dart';
import 'user_model.dart';

class HomeModel extends HomeEntity {
  HomeModel({
    required super.categories,
    required super.userEntity,
    required super.banners,
    required super.products,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      categories: (json['categories'] as List).map((data) => CategoryModel.fromJson(data)).toList(),
      userEntity: UserModel.fromJson(json['userInfo']),
      banners: (json['banners'] as List).map((data) => BannerModel.fromJson(data)).toList(),
      products: (json['products'] as List).map((data) => ProductModel.fromJson(data)).toList(),
    );
  }
}
