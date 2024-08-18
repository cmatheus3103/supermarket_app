import '../states/home_states.dart';

abstract class HomeRepository {
  Future<HomeState> getHomeData();
}
