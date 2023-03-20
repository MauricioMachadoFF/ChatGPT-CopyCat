import 'package:dio/dio.dart';
import 'package:open_ai_copy_cat/core/authorization_token.dart';

class APIClient {
  final BaseOptions _baseOptions = BaseOptions(
    baseUrl: 'https://api.openai.com/v1/',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      "Authorization": "BEARER $authorizationToken",
      "Content-Type": "application/json"
    },
  );
  final Dio dioInstance = Dio();

  APIClient() {
    _onBaseOptionsUpdate();
  }

  void _onBaseOptionsUpdate() {
    dioInstance.options = _baseOptions;
  }
}
