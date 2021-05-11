import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    stdout.writeln('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    stdout.writeln(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    stdout.writeln('BODY: ${response.data}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    stdout.writeln(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    stdout.writeln('BODY: ${err.response?.data}');
    return super.onError(err, handler);
  }
}

Dio httpClient() {
  const protocol = "http";
  const productionHost = "185.246.67.169:5001";

  // Debug mode ip's
  const androidLoopback = "10.0.2.2:5000";
  // const localhost = "127.0.0.1:5000"; Web sucks

  const enableDebugMode = true;

  final BaseOptions options = BaseOptions(
      baseUrl:
          "$protocol://${enableDebugMode ? androidLoopback : productionHost}/api");
  final Dio dio = Dio(options);

  dio.interceptors.add(CustomInterceptors());

  if (!kIsWeb) {
    // Разрешаем самоподписанный сертификат
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  return dio;
}
