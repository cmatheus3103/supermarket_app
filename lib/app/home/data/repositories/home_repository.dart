import '../../domain/errors/errors.dart';
import '../../domain/repositories/home_repository.dart';
import '../../domain/states/home_states.dart';
import '../datasources/home_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource datasource;

  HomeRepositoryImpl(this.datasource);

  @override
  Future<HomeState> getHomeData() async {
    try {
      final homeModel = await datasource.getHomeData();
      return SuccessState(homeModel);
    } catch (e) {
      return ErrorState(EmptyHome());
    }
  }
}
