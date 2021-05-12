import 'dart:convert';

import 'package:dfunc/dfunc.dart';
import 'package:dio/dio.dart';
import 'package:travel_planner_app/models/api/account/account.dart';
import 'package:travel_planner_app/models/api/paginated_response/paginated_response.dart';

import 'http_client.dart';

Map<String, dynamic> toMap(dynamic x) {
  return Map<String, dynamic>.from(x as Map<dynamic, dynamic>);
}

Map<String, dynamic> jsonToMap(String jsonString) {
  return toMap(jsonDecode(jsonString));
}

mixin RestClient {
  static final Dio client = httpClient();

  static late AccountsRest accounts = AccountsRest(client);
  static late PlacesRest places = PlacesRest(client);
}

class AccountsRest {
  final Dio client;

  AccountsRest(this.client);

  Future<PaginatedResponse> getAccounts() async {
    return client
        .get<String>("/accounts")
        .then((value) => jsonToMap(value.data!))
        .then((value) => PaginatedResponse.fromJson(value));
  }

  Future<bool> passwordMatch(
      {required String login, required String password}) async {
    return client.get<String>("/accounts/registration", queryParameters: {
      "login": login,
      "password": password
    }).then((value) => value.data == "true");
  }

  Future<Either<Account, String?>?> registerAccount(
      {required String login,
      required String password,
      required String firstname,
      required String lastname,
      String? patronymic,
      required int age}) async {
    try {
      final response =
          await client.post<String>("/accounts/registration", data: {
        "login": login,
        "password": password,
        "personalInfo": {
          "firstname": firstname,
          "lastname": lastname,
          "patronymic": patronymic,
          "age": age
        }
      }).then((value) => jsonToMap(value.data!));

      String errorToString(int errorId) {
        switch (errorId) {
          case 0:
            return "Ошибка валидации";
          case 1:
            return "Аккаунт не найден";
          case 2:
            return "Неверный BsonId";
          case 3:
            return "Неверный параметр запроса";
          case 4:
            return "Ошибка парсинга JSON";
          default:
            return "Неизвестная ошибка";
        }
      }

      return response['resultValue'] != null
          ? Either.left(
              Account.fromJson(response['resultValue'] as Map<String, dynamic>))
          : Either.right(
              ((response['errorValue'] as Map<String, dynamic>)['tag'] as int)
                  .maybeMap((errorId) {
              return errorToString(errorId);
            }));
    } on DioError catch (e) {
      return Either.right(e.response!.data.toString());
    }
  }
}

class PlacesRest {
  final Dio client;

  PlacesRest(this.client);

  Future<PaginatedResponse> getPlaces() async {
    return client
        .get<String>("/places")
        .then((value) => jsonToMap(value.data!))
        .then((value) => PaginatedResponse.fromJson(value));
  }

  Future<PaginatedResponse> getAccountPlaces(String accountId) async {
    return client
        .get<String>("/accounts/$accountId/places")
        .then((value) => jsonToMap(value.data!))
        .then((value) => PaginatedResponse.fromJson(value));
  }
}
