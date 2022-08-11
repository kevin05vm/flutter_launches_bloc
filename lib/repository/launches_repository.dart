import 'package:http/http.dart' as http;

import 'package:flutter_practica/models/launches.dart';

class LaunchesRepository {
  
  final String _api = 'https://api.spacexdata.com/v4/launchpads';
  
  Future<List<Types>>getLaunches() async {
    final response = await http.get(Uri.parse(_api));
    if(response.statusCode == 200) {
      final data = typesFromMap(response.body);
      return data;
    }
    else {
      throw Exception('Error in api');
    }
  }
  
}

