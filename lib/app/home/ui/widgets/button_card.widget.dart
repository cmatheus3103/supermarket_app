import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/font_styles.dart';

class ButtonCardWidget extends StatelessWidget {
  const ButtonCardWidget({super.key, required this.title, required this.image});

  final String title;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.accentGreen,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              Text(
                title,
                style:  TextStyle(
                  fontSize: TextSize.medium.size, 
                  fontWeight: TextWeight.extraBold.weight,
                ),
              )
            ],
          ),
          Align(alignment: Alignment.bottomRight, child: image),
        ],
      ),
    );
  }
}
