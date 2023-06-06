import 'package:firebase_fdp/src/features/data/repositorys/auth/signup_repository/signup_repository_parameters.dart';
import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/interfaces/auth_firebase_interfase.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/services/signup_auth_service.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:firebase_fdp/src/services/firebase_service/auth_firebase_service/decodables/signup_decodables.dart';

class DefaultSignUpRepository extends SignUpRepository {
  //Dependencias

  SignUpService _signUpService;

  DefaultSignUpRepository({SignUpService? signUpService})
      : _signUpService = signUpService ?? DefaultSignUpService();

  @override
  Future<Result<SignUpDecodable, Failure>> signUp(
      {required SignUpRepositoryParameters params}) async {
    try {
      final result =
          await _signUpService.signUp(bodyParameters: params.toMap());
      SignUpDecodable decodable = SignUpDecodable.fromMap(result);
      return Result.success(decodable);
    } on Failure catch (f) {
      return Result.failure(
          Failure.getFirebaseAuthErrorMessage(error: f.error));
    }
  }
}
