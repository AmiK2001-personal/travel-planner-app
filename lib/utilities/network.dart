import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

void getHttp() async {
  try {
    var response =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
    print(response.body);
  } catch (e) {
    print(e);
  }
}
