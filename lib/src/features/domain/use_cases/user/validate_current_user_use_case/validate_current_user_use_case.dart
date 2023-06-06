import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/user_auth_data/user_aut_data_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/user_auth_data/user_auth_data_use_case_body_parameters.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

abstract class ValidateCurrentUserUseCase {
  Future<bool> execute({required String idToken});
}

class DefaultValidateCurrentUserUseCase extends ValidateCurrentUserUseCase {
  //Dependencias
  final UserAuthDataUseCase _authDataUseCase;

  DefaultValidateCurrentUserUseCase({UserAuthDataUseCase? authDataUseCase})
      : _authDataUseCase = authDataUseCase ?? DefaultUserAuthDataUseCase();

  @override
  Future<bool> execute({required String idToken}) async {
    try {
      return _authDataUseCase
          .execute(parameters: GetUserDataUseCaseParameters(idToken: idToken))
          .then((result) {
        switch (result.status) {
          case ResultStatus.success:
            return true;
          case ResultStatus.error:
            return false;
        }
      });
    } on Failure {
      return false;
    }
  }
}
