import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter_practica/models/launches.dart';
import 'package:flutter_practica/repository/launches_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  
  final _launchesRepository = LaunchesRepository();
  
  HomeBloc(): super(const HomeLoadingState()) {
    
    on<LoadLaunches>((event, emit) async {
      emit(const HomeLoadingState());
      final launches = await _launchesRepository.getLaunches();
      if(launches.isNotEmpty) {
        emit(HomeLaunchesState(launches));
      }
      else{
        throw Exception('error emit data');
      }
    });
  }
}
