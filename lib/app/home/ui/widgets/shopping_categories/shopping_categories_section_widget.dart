import 'package:flutter/material.dart';


import '../../../../core/constants/font_styles.dart';
import '../../../domain/entities/category_entity.dart';
import 'shopping_categorie_widget.dart';

class ShoppingCategoriesSectionWidget extends StatefulWidget {
  const ShoppingCategoriesSectionWidget({super.key, required this.categories});
  final List<CategoryEntity> categories;
  @override
  State<ShoppingCategoriesSectionWidget> createState() =>
      _ShoppingCategoriesSectionWidgetState();
}

class _ShoppingCategoriesSectionWidgetState
    extends State<ShoppingCategoriesSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shop by category',
            style: TextStyle(
                fontSize: TextSize.large.size, fontWeight: TextWeight.extraBold.weight),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ShoppingCategorieWidget(
                  title: widget.categories[index].title,
                  imgUrl: widget.categories[index].imageUrl,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
