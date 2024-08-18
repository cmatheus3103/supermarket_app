import 'package:flutter/material.dart';

import '../repositories/home_repository.dart';
import '../states/home_states.dart';

class HomeController {
  final HomeRepository _homeRepository;

  HomeController({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;

  ValueNotifier<HomeState> state = ValueNotifier<HomeState>(const StartState());

  Future<void> getHomeData() async {
    state.value = const LoadingState();
    await Future.delayed(const Duration(seconds: 5));
    state.value = await _homeRepository.getHomeData();
  }
}
