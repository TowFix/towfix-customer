import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetworkInfo {
  Future<bool> get hasConnection;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl({required this.connectionChecker});
  final InternetConnection connectionChecker;

  @override
  Future<bool> get hasConnection => connectionChecker.hasInternetAccess;
}
