

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class NetworkProvider {

  static Dio instance() {
    final dio = Dio();
    dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
    return dio;
  }
}