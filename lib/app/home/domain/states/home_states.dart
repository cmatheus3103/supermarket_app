import '../entities/home_entity.dart';
import '../errors/errors.dart';

abstract class HomeState {}

class StartState implements HomeState {
  const StartState();
}

class LoadingState implements HomeState {
  const LoadingState();
}

class ErrorState implements HomeState {
  final Failure error;
  const ErrorState(this.error);
}

class SuccessState implements HomeState {
  final HomeEntity homeEntity;
  const SuccessState(this.homeEntity);
}
