import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/body_parameters/update_password_user_service_body_parameters.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/interfaces/auth_firebase_interfase.dart';

class DefaulUpdatePasswordUserService extends UpdatePasswordUserService {
  final String _requesType = "PASSWORD_RESET";

  @override
  Future<Map<String, dynamic>> updatePassword({required String email}) {
    final _params =
        UpdatePasswordBodyParameters(requestType: _requesType, email: email);
    return apiService.getDataFromPostRequest(
        bodyParameters: _params.toMap(), url: endPoint);
  }
}
