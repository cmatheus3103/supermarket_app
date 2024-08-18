import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../core/constants/app_colors.dart';

class HomeBottonNavigationBar extends StatefulWidget {
  const HomeBottonNavigationBar({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  State<HomeBottonNavigationBar> createState() =>
      _HomeBottonNavigationBarState();
}

int _bottomNavIndex = 0;
final iconList = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  const BottomNavigationBarItem(icon: Icon(Icons.sell), label: 'Deals'),
  const BottomNavigationBarItem(icon: Icon(Icons.local_mall), label: 'Cart'),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
];

class _HomeBottonNavigationBarState extends State<HomeBottonNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.scrollController,
        builder: (context, child) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            height: widget.scrollController.position.userScrollDirection ==
                    ScrollDirection.reverse
                ? 0
                : 80,
            child: SingleChildScrollView(
              child: BottomNavigationBar(
                  items: iconList,
                  selectedItemColor: AppColors.accentGreen,
                  unselectedItemColor: AppColors.accentGreen.withOpacity(0.5),
                  unselectedLabelStyle:
                      TextStyle(color: AppColors.accentGreen.withOpacity(0.5)),
                  selectedLabelStyle:
                      const TextStyle(color: AppColors.accentGreen),
                  showUnselectedLabels: true,
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  enableFeedback: true,
                  showSelectedLabels: true,
                  currentIndex: _bottomNavIndex,
                  onTap: (index) => setState(() => _bottomNavIndex = index)),
            ),
          );
        });
  }
}
