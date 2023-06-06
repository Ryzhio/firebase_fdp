abstract class BaseRealtimeDatabaseService {
  String baseUrl = "https://fdp-bk-default-rtdb.firebaseio.com/";
  String endUrl = ".json";
}

abstract class RealtimeDatabaseService extends BaseRealtimeDatabaseService {
  Future<Map<String, dynamic>> postData(
      {required Map<String, dynamic> bodyParams, required String path});
  Future<Map<String, dynamic>> putData(
      {required Map<String, dynamic> bodyParams, required String path});
  Future<Map<String, dynamic>> getData({required String path});
}
