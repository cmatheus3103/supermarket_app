import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:supermarket_app/app/home/data/datasources/home_datasource.dart';
import 'package:supermarket_app/app/home/data/datasources/local_home_datasource/local_home_datasource.dart';
import 'package:supermarket_app/app/home/data/repositories/home_repository.dart';
import 'package:supermarket_app/app/home/domain/controllers/home_controller.dart';
import 'package:supermarket_app/app/home/domain/repositories/home_repository.dart';

import 'app/core/theme_app.dart';
import 'app/home/ui/home_page.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeDatasource>(LocalHomeDataSourceImpl());
  getIt.registerSingleton<HomeRepository>(HomeRepositoryImpl(getIt()));
  getIt.registerSingleton<HomeController>(
      HomeController(homeRepository: getIt()));
}

void main() {
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        overscroll: false,
      ),
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const HomePage(),
    );
  }
}
