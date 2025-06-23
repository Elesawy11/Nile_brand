import 'package:dio/dio.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';

class ApiService {
  final Dio dio = DioFactory.getDio();

  Future<Response> post(
      {required body,
      required String url,
      required String token,
      String? contentType}) async {
    var response = await dio.post(url,
        data: body,
        options: Options(
          contentType: contentType,
          headers: {'Authorization': "Bearer $token"},
        ));

    return response;
  }
}
