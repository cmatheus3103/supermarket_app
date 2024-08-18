import 'package:flutter/material.dart';


import '../../../core/constants/font_styles.dart';
import '../../domain/entities/user_entity.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.userEntity});
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(userEntity.photoAvatarUrl)),
        )
      ],
      title:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Delivery',
              style: TextStyle(fontSize: TextSize.large.size, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text('Bacangan , Sambit',
                  style: TextStyle(
                    fontSize: TextSize.medium.size,
                  )),
              const Icon(Icons.keyboard_arrow_down)
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
