import 'package:flutter/material.dart';


import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/font_styles.dart';
import '../../../domain/entities/banner_entity.dart';
import '../../../domain/entities/product_entity.dart';
import '../banner_carousel/banner_carousel_widget.dart';
import 'product_body_widget.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: ProductBottomBar(
        size: size,
        price: widget.productEntity.price,
        discountPrice: widget.productEntity.discountPrice,
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                isFavorite ? Icons.favorite_sharp : Icons.favorite_border,
                color: isFavorite ? Colors.red : AppColors.blueApp,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BannersCarouselWidget(
              isSquare: true,
              banners: widget.productEntity.images
                  .map((imageUrl) => BannerEntity(imageUrl: imageUrl))
                  .toList(),
            ),
            ProductBodyWidget(
              title: widget.productEntity.name,
              rate: widget.productEntity.rate,
              shopName: widget.productEntity.shopName,
              description: widget.productEntity.description,
            )
          ],
        ),
      ),
    );
  }
}

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({
    super.key,
    required this.size,
    required this.price,
    required this.discountPrice,
  });

  final Size size;
  final double price;
  final double discountPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: (Row(
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Price',
                      style:
                          TextStyle(fontSize: TextSize.medium.size, color: AppColors.greyText)),
                  Row(
                    children: [
                      Text(
                        '\$${discountPrice.toString()}',
                        style:  TextStyle(
                            fontSize: TextSize.large.size, fontWeight: TextWeight.extraBold.weight),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '\$${price.toString()}',
                        style:  TextStyle(
                            fontSize: TextSize.medium.size,
                            decoration: TextDecoration.lineThrough,
                            color: AppColors.greyText),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(AppColors.accentGreen)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
                child: Text('Add to Cart',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
