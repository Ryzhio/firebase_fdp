import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/interfaces/auth_firebase_interfase.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/services/update_password_user_service.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/update_password_decodable.dart';

class DefaultUpdatePasswordRepository extends UpdatePasswordRepository {
  //Dependencias
  final UpdatePasswordUserService _updatePasswordUserService;

  DefaultUpdatePasswordRepository(
      {UpdatePasswordUserService? updatePasswordUserService})
      : _updatePasswordUserService =
            updatePasswordUserService ?? DefaulUpdatePasswordUserService();

  @override
  Future<Result<UpdatePasswordDecodable, Failure>> updatePassword(
      {required String email}) async {
    try {
      final result =
          await _updatePasswordUserService.updatePassword(email: email);
      UpdatePasswordDecodable _decodable =
          UpdatePasswordDecodable.fromMap(result);
      return Result.success(_decodable);
    } on Failure catch (f) {
      return Result.failure(
          Failure.getFirebaseAuthErrorMessage(error: f.error));
    }
  }
}
