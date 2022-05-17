
import 'dart:convert';

import 'package:http/http.dart';

import '../Model/healthy_model.dart';

class Network {

  Future<HealthyModel> getHealthy({required String cityName}) async{
    var finalUrl = "https://testapi.io/api/fifi/https://testapi.io/api/fifi/healthypacer";

    final response = await get(Uri.parse(finalUrl));
    // print("URL: ${Uri.parse(finalUrl)}");
    print(response.statusCode);

    if (response.statusCode == 200 ) {
      // print("weather data: ${response.body}");

      return HealthyModel.fromJson(json.decode(response.body));
    }else {
      throw Exception("Error getting weather forecast");
    }


  }
}