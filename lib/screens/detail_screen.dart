import 'package:flutter/material.dart';

import 'package:flutter_practica/models/launches.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final launch = ModalRoute.of(context)!.settings.arguments as Types;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Column(
          children:  [
            Image(
              image: NetworkImage(launch.images.large.first),
              height: height * 0.25,
              width: double.infinity,
              fit: BoxFit.cover
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(launch.fullName),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Text(launch.details),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              child: const Text('See More'),
              onPressed: (){}
              )
          ]
        ))
    );
  }
}