import 'package:flutter/material.dart';
import 'package:supermarket_app/app/core/constants/app_colors.dart';
import 'package:supermarket_app/app/home/domain/entities/product_entity.dart';

import '../../../../core/constants/font_styles.dart';
import 'product_widget.dart';

class ProductsSectionWidget extends StatefulWidget {
  const ProductsSectionWidget({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  State<ProductsSectionWidget> createState() => _ProductsSectionWidgetState();
}

class _ProductsSectionWidgetState extends State<ProductsSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
               Text(
                'Today\'s Special',
                style: TextStyle(fontSize: TextSize.large.size, fontWeight: TextWeight.extraBold.weight),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child:  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: TextSize.medium.size,
                        fontWeight: FontWeight.bold,
                        color: AppColors.accentGreen),
                  ))
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.7),
            itemCount: widget.products.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductWidget(
                productEntity: widget.products[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
