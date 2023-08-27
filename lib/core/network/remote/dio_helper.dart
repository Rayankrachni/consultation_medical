
import 'package:consultation_medical/core/const/end_point.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final Dio _dio;

  ApiProvider() : _dio = Dio(BaseOptions(
    baseUrl:baseUrl,
    headers: {
      'Content-Type': 'application/json',
    },
  ));

  Future<Response> register(String name, String email, String password, String deviceToken,String imgUrl) {
    return _dio.post('/register', data: {
      'name': name,
      'email': email,
      'deviceToken': deviceToken,
      'password': password,
      'image': imgUrl,
    });
  }

  Future<Response> login(String email, String password) {
    return _dio.post('/login', data: {
      'email': email,
      'password': password,
    });
  }




  Future getImage(token) async {
    try {
      Response response = await _dio.get(
        '/url/',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load img');
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }


}