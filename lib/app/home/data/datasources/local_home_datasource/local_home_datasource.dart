import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../../models/home_model.dart';
import '../home_datasource.dart';

class LocalHomeDataSourceImpl implements HomeDatasource {
  @override
  Future<HomeModel> getHomeData() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/supermarket_home.json');
      final data = json.decode(jsonString);
      final homeModel = HomeModel.fromJson(data);
      return homeModel;
    } catch (e) {
      throw Exception();
    }
  }
}
