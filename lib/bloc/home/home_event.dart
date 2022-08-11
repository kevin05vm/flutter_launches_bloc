part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class LoadLaunches extends HomeEvent {
  final List<Types> launches;
  LoadLaunches(this.launches);
}