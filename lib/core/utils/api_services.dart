import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://magdsoft.ahmedshawky.fun/api/';

  final Dio _dio;

  ApiService(this._dio);


  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> post({required String endPoint, required Map<String, dynamic> pram}) async {
    var response = await _dio.post(
      '$_baseUrl$endPoint',
      queryParameters: pram,
    );
    return response.data;
  }
}
