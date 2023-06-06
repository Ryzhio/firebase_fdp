import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/interfaces/auth_firebase_interfase.dart';

class DefaultGetUserAuthDataService extends GetUserAuthDataService {
  @override
  Future<Map<String, dynamic>> getUserAuthData(
      {required Map<String, dynamic> bodyparameters}) {
    return apiService.getDataFromPostRequest(
        bodyParameters: bodyparameters, url: endPoint);
  }
}
