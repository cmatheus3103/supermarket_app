import 'package:flutter/material.dart';

import '../../../../core/constants/font_styles.dart';
import 'product_type_tag_widget.dart';

class ProductBodyWidget extends StatefulWidget {
  const ProductBodyWidget(
      {super.key,
      required this.title,
      required this.rate,
      required this.description,
      required this.shopName});
  final String title;
  final String description;
  final String shopName;
  final double rate;

  @override
  State<ProductBodyWidget> createState() => _ProductBodyWidgetState();
}

class _ProductBodyWidgetState extends State<ProductBodyWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.5,
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: TextSize.extraLarge.size,
                      fontWeight: TextWeight.extraBold.weight),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.star, color: Colors.yellowAccent),
                label: Text(
                  widget.rate.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: TextSize.medium.size),
                ),
              ),
            ],
          ),
          Text(
            'Shop: ${widget.shopName}',
            style: TextStyle(fontSize: TextSize.medium.size),
          ),
          const ProductTypeTagWidget(),
          const SizedBox(height: 16),
          Text(
            'Details',
            style: TextStyle(
                fontWeight: TextWeight.extraBold.weight,
                fontSize: TextSize.large.size),
          ),
          const SizedBox(height: 8),
          Text(
            widget.description,
            style: TextStyle(
                fontSize: TextSize.medium.size, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
