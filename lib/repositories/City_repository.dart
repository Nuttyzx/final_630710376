import 'dart:convert';

import 'package:flutter/services.dart';


import '../services/api_caller.dart';


class CityRepository {
  Future<Map<String, dynamic>> getCitys() async {
    try {
      var result = await ApiCaller().get('api/1_2566/weather/current?city=Paris');
      Map<String, dynamic>  mapcity = jsonDecode(result);
      return mapcity;
    } catch (e) {
      // TODO:
      rethrow;
    }
  }

}
