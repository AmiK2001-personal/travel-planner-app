import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

Dio httpClient() {
  final BaseOptions options =
      BaseOptions(baseUrl: "http://185.246.67.169:5001/api");
  final Dio dio = Dio(options);

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
