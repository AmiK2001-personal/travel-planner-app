import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:travel_planner_app/models/api/paginated_response/paginated_response.dart';

import 'http_client.dart';

Map<String, dynamic> toMap(dynamic x) {
  return Map<String, dynamic>.from(x as Map<dynamic, dynamic>);
}

Map<String, dynamic> jsonToMap(String jsonString) {
  return toMap(jsonDecode(jsonString));
}

class RestClient {
  Dio client = httpClient();

  Future<PaginatedResponse> getAccounts() async {
    return client
        .get<String>("/accounts")
        .then((value) => jsonToMap(value.data!))
        .then((value) => PaginatedResponse.fromJson(value));
  }
}
