import 'package:firebase_fdp/src/features/data/repositorys/auth/signin_repository/sign_in_body_parameters.dart';
import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/interfaces/auth_firebase_interfase.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/services/signin_auth_service.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/signin_decodables.dart';

class DefaultSignInRepository extends SignInRepository {
  //Dependencias
  final SignInService _signInService;
  DefaultSignInRepository({final SignInService? signInService})
      : _signInService = signInService ?? DefaultSignInService();

  @override
  Future<Result<SignInDecodable, Failure>> signIn(
      {required SignInBodyParameters params}) async {
    try {
      final result =
          await _signInService.signIn(bodyParameters: params.toMap());
      SignInDecodable decodable = SignInDecodable.fromMap(result);
      return Result.success(decodable);
    } on Failure catch (f) {
      return Result.failure(
          Failure.getFirebaseAuthErrorMessage(error: f.error));
    }
  }
}
