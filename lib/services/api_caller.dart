import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



//class ที่ทำหน้าที่ call api
class ApiCaller { //call ไปที่ api จริง
  static const baseUrl = 'https://cpsu-test-api.herokuapp.com';
  static final _dio = Dio(BaseOptions(responseType: ResponseType.plain)); //ใช้ dio ทำการ get api ตาม path ที่ระบุ


  Future<String> get(String endpoint, {Map<String, dynamic>? params}) async { //ส่ง endpoint มา
    try { //try catch สอบไม่จำเปนต้องทำ
      final response =
      await _dio.get('$baseUrl/$endpoint', queryParameters: params);
      debugPrint(response.data.toString());
      return response.data.toString(); //
    } catch (e) {
      // TODO:
      rethrow;
    }
  }
}
