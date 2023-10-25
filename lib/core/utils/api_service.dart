import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> post(
      {required Body,
      required String url,
      required String token,
      String? contentType}) async {
    var response = await dio.post(url,
        data: Body,
        options: Options(
          contentType: contentType,
          headers: {'Authorization': "Bearer $token"},
        ));

    return response;
  }
}
