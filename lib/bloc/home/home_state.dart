part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  const HomeState();
}

class HomeLoadingState extends HomeState {
  const HomeLoadingState(): super();
}

class HomeLaunchesState extends HomeState {
  final List<Types> launches;
  const HomeLaunchesState(this.launches);
}