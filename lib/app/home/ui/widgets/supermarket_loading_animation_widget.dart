import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SupermarketLoadingAnimation extends StatefulWidget {
  const SupermarketLoadingAnimation({super.key});

  @override
  State<SupermarketLoadingAnimation> createState() =>
      _SupermarketLoadingAnimationState();
}

class _SupermarketLoadingAnimationState
    extends State<SupermarketLoadingAnimation> {
  @override
  Widget build(BuildContext context) {
    return Lottie.network(
      'https://lottie.host/fce315d9-ce5d-485e-ba7c-ab2b40cb3dcc/z8RHrM1qSG.json',
    );
  }
}
