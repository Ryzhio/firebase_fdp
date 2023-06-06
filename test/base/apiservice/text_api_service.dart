// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_fdp/src/base/apiservice/api_service.dart';
import 'models/text_api_models.dart';

abstract class _Constants {
  static Map<String, String> defaultHeaders = {
    'Content-type': 'application/json; charset=UTF-8'
  };
  static String postEndpoint = "https://jsonplaceholder.typicode.com/posts";
  static String getEndpoint = "https://jsonplaceholder.typicode.com/posts/1";
  static String putEndpoint = "https://jsonplaceholder.typicode.com/posts/1";
}

void main() {
  //Esta vamos a testear
  final ApiService _testApiService = DefaultApiService();

  //Test correct Connection of Api Service

  group('Test correct Connection of Api Service', () {
    //Test correct post connection to Jsonplaceholder
    test('Test correct post connection to Jsonplaceholder', () async {
      final bodyParams =
          CorrerctPostBodyParams(title: 'foo', body: 'bar', userId: 1);
      final result = await _testApiService.getDataFromPostRequest(
          bodyParameters: bodyParams.toMap(),
          url: _Constants.postEndpoint,
          headers: _Constants.defaultHeaders);

      expect(result, Map.from(result));
    });
    //Test correct get connection to Jsonplaceholder
    test('Test correct get connection to Jsonplaceholder', () async {
      final result = await _testApiService.getDataFromGetRequest(
          url: _Constants.getEndpoint);

      expect(result, Map.from(result));
    });
    //Test correct put connection to Jsonplaceholder
    test('Test correct put connection to Jsonplaceholder', () async {
      final body =
          CorrerctPutBodyParams(id: 1, title: 'foo', body: 'bar', userId: 1);
      final result = await _testApiService.getDataFromPutRequest(
          bodyParameters: body.toMap(),
          url: _Constants.putEndpoint,
          headers: _Constants.defaultHeaders);

      expect(result, Map.from(result));
    });
  });
}
