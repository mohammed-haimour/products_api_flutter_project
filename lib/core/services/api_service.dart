import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  final String baseUrl = "https://fakestoreapi.com/products";

  ApiService(this._dio);

  Future<List<dynamic>> get({required String endPoint}) async {
    var res = await _dio.get("$baseUrl$endPoint");
    return res.data;
  }
}
