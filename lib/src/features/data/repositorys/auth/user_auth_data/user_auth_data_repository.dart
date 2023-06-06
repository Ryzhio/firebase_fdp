import 'package:firebase_fdp/src/features/data/repositorys/auth/user_auth_data/user_auth_data_repository_body_parameters.dart';
import 'package:firebase_fdp/src/features/data/decodables/auth/user_auth_data/user_auth_data_decodable.dart';
import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/interfaces/auth_firebase_interfase.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/services/get_user_auth_data_service.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

class DefaultUserAuthDataRepository extends UserAuthDataRepository {
  //Dependencias
  final GetUserAuthDataService _getUserAuthDataService;

  DefaultUserAuthDataRepository(
      {GetUserAuthDataService? getUserAuthDataService})
      : _getUserAuthDataService =
            getUserAuthDataService ?? DefaultGetUserAuthDataService();

  @override
  Future<Result<UserAuthDataDecodable, Failure>> getUserAuthData(
      {required GetUserDataBodyParameters parameters}) async {
    try {
      final result = await _getUserAuthDataService.getUserAuthData(
          bodyparameters: parameters.toMap());
      UserAuthDataDecodable _decodable = UserAuthDataDecodable.fromMap(result);
      return Result.success(_decodable);
    } on Failure catch (f) {
      return Result.failure(
          Failure.getFirebaseAuthErrorMessage(error: f.error));
    }
  }
}
