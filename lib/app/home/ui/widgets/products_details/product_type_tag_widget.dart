import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class ProductTypeTagWidget extends StatefulWidget {
  const ProductTypeTagWidget({super.key});

  @override
  State<ProductTypeTagWidget> createState() => _ProductTypeTagWidgetState();
}

class _ProductTypeTagWidgetState extends State<ProductTypeTagWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.litghGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.spa_outlined,
                    ),
                  ),
                ),
                const Text(
                  'Vegetarian',
                  style: TextStyle(color: AppColors.blueApp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.spa_outlined,
                    ),
                  ),
                ),
                const Text(
                  'Vegetarian',
                  style: TextStyle(color: AppColors.blueApp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.spa_outlined,
                    ),
                  ),
                ),
                const Text(
                  'Vegetarian',
                  style: TextStyle(color: AppColors.blueApp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
