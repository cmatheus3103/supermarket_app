import 'package:flutter/material.dart';

import '../../../../core/constants/font_styles.dart';

class ShoppingCategorieWidget extends StatefulWidget {
  const ShoppingCategorieWidget(
      {super.key, required this.title, required this.imgUrl});
  final String title;
  final String imgUrl;
  @override
  State<ShoppingCategorieWidget> createState() =>
      _ShoppingCategorieWidgetState();
}

class _ShoppingCategorieWidgetState extends State<ShoppingCategorieWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(widget.imgUrl),
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(
                fontSize: TextSize.medium.size, fontWeight: TextWeight.semiBold.weight),
          ),
        ],
      ),
    );
  }
}
