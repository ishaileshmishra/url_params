import 'package:dio/dio.dart';
import 'package:url_params/src/model/error.dart';

abstract class ResponseCallback {
  void onSuccess(Response<dynamic> response);
  void onFailure(Error error);
}
