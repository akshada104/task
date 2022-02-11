import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:task/data/data.dart';

/// The helper class which will connect to the world to get the data.
class ConnectHelper extends GetConnect {
  @override
  void onInit() {
    httpClient
      ..baseUrl = DataConstants.baseUrl
      ..timeout = const Duration(
        milliseconds: 500,
      )
      ..maxAuthRetries = 2
      ..maxRedirects = 2;
    super.onInit();
  }
}

class ResponseModel {
  ResponseModel({
    required this.data,
    required this.hasError,
    this.errorCode,
  });
  final String data;
  final bool hasError;
  final int? errorCode;
}
