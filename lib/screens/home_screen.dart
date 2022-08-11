import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practica/bloc/home/home_bloc.dart';

import 'package:flutter_practica/router/app_raouter.dart';
import 'package:flutter_practica/widgets/card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Last Launches'),),
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (_, homeState) {
            if(homeState is HomeLoadingState) {
              //return const Center(child: Text('Loading...'));
              return const Center(child: CircularProgressIndicator());
            }
            if(homeState is HomeLaunchesState) {
              return ListView.builder(
                itemCount: homeState.launches.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        AppRoutes.detailScreenRoute,
                        arguments:homeState.launches[index]
                      );
                    },
                    child: CardItem(launch: homeState.launches[index])
                  );
                }
              );
            }
            return const Center(child: Text('Error api...'));
          }
        ))
    );
  }
}