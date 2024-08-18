import 'package:flutter/material.dart';


import '../../../domain/entities/banner_entity.dart';
import 'fade_image_widget.dart';

class BannerWidget extends StatelessWidget {
  final BannerEntity banner;
  final bool isLastBanner;
  final bool isNetworkImage;

  const BannerWidget({
    super.key,
    required this.banner,
    this.isLastBanner = false,
    required this.isNetworkImage,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        right: isLastBanner ? size.width * 0.05 : 0.05,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: FadeImageWidget(
          networkImageUrl: banner.imageUrl,
          borderRadius: 20,
          isNetworkImage: isNetworkImage,
        ),
      ),
    );
  }
}
