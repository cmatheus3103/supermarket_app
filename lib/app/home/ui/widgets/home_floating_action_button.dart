import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        return AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            height: scrollController.position.userScrollDirection ==
                    ScrollDirection.reverse
                ? 0
                : 80,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: FloatingActionButton(
                shape: const CircleBorder(),
                elevation: 0,
                onPressed: () {},
                child: const Icon(Icons.store),
              ),
            ));
      },
    );
  }
}
