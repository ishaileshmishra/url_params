import 'package:dio/dio.dart';
import 'package:url_params/src/response_callback.dart';

class Service {
  var baseUrl;
  var endpoint;

  Service({
    required this.endpoint,
    required this.baseUrl,
  });

  void getRequest(ResponseCallback callback) async {
    try {
      var response = await Dio().get(baseUrl);
      if (response.statusCode == 200) {
        callback.onSuccess(response.data);
      } else {
        callback.onFailure(response.data);
      }
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
