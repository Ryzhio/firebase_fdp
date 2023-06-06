import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/user_auth_data/user_auth_data_repository.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/user_auth_data/user_auth_data_repository_body_parameters.dart';
import 'package:firebase_fdp/src/features/domain/entities/auth/user_auth_data/user_auth_data_entity.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/user_auth_data/user_auth_data_use_case_body_parameters.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

abstract class UserAuthDataUseCase {
  Future<Result<UserAuthDataEntity, Failure>> execute(
      {required GetUserDataUseCaseParameters parameters});
}

class DefaultUserAuthDataUseCase extends UserAuthDataUseCase {
  //Dependencias
  final UserAuthDataRepository _userAuthDataRepository;

  DefaultUserAuthDataUseCase({UserAuthDataRepository? userAuthDataRepository})
      : _userAuthDataRepository =
            userAuthDataRepository ?? DefaultUserAuthDataRepository();

  @override
  Future<Result<UserAuthDataEntity, Failure>> execute(
      {required GetUserDataUseCaseParameters parameters}) {
    return _userAuthDataRepository
        .getUserAuthData(
            parameters: GetUserDataBodyParameters(idToken: parameters.idToken))
        .then((result) {
      switch (result.status) {
        case ResultStatus.success:
          if (result.value == null) {
            return Result.failure(Failure.fromMessage(
                message: AppFailureMessage.unExpctedErrorMessage));
          }
          return Result.success(
              UserAuthDataEntity.fromMap(result.value!.toMap()));
        case ResultStatus.error:
          return Result.failure(result.error);
      }
    });
  }
}
