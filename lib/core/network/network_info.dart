import 'package:connectivity/connectivity.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected {
    Future<bool> connectivityResultToBool(
        ConnectivityResult connectivityResult) async {
      if (connectivityResult == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    }

    return connectionChecker
        .checkConnectivity()
        .then((value) => connectivityResultToBool(value));
  }
}
