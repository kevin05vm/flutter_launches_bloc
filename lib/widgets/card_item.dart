import 'package:flutter/material.dart';

import 'package:flutter_practica/models/launches.dart';

class CardItem extends StatelessWidget {
  final Types launch;
  const CardItem({required this.launch, Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const Padding(
            padding:  EdgeInsets.all(12.0),
            child:  Icon(
              Icons.launch,
              color: Colors.grey,
              size: 34.0,
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(launch.name),
                Text(launch.fullName),
                const Text('2020-08-06')
              ]
            ),
          )
        ]
      )
    );
  }
}