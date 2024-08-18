
import '../models/home_model.dart';

abstract class HomeDatasource {
  Future<HomeModel> getHomeData();
}
