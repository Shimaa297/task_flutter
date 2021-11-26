import 'package:dio/dio.dart';

class DioHelper
{
  static late Dio dio;

  static init()
  {
    dio = Dio(
        BaseOptions(
            baseUrl: 'https://flutter-test-api.herokuapp.com/',
            receiveDataWhenStatusError: true,
            // headers:
            // {
            //   'Content-Type':'application/json',
            // }
        )
    );
  }

  static Future<Response> getData({
    required String url,
   // Map<String, dynamic> query,
    // String token,
  }) async
  {
    // dio.options.headers = {
    //   'Authorization' : token,
    // };
    return await dio.get(
        url,
       // queryParameters: query
    );
  }



  // static Future<Response> postData({
  //   @required String url,
  //   @required Map< String , dynamic > data,
  //   Map< String , dynamic > query,
  //   String token,
  // })async
  // {
  //   dio.options.headers = {
  //     'Authorization' : token,
  //   };
  //   return await dio.post(
  //     url,
  //     data: data,
  //     queryParameters: query,
  //   );
  // }
}