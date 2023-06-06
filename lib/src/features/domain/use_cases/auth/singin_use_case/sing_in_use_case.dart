import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/signin_repository/sign_in_body_parameters.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/signin_repository/sign_in_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/auth/singin_entity/sign_in_entity.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/singin_use_case/sign_in_use_case_body_parameters.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

abstract class SignInUseCase {
  Future<Result<SignInEntity, Failure>> execute(
      {required SignInUseCaseBodyParameters params});
}

class DefaultSignInUseCase extends SignInUseCase {
  //Dependencias
  SignInRepository _signInRepository;
  DefaultSignInUseCase({SignInRepository? signInRepository})
      : _signInRepository = signInRepository ?? DefaultSignInRepository();

  @override
  Future<Result<SignInEntity, Failure>> execute(
      {required SignInUseCaseBodyParameters params}) {
    return _signInRepository
        .signIn(
            params: SignInBodyParameters(
                email: params.email, password: params.password))
        .then((result) {
      switch (result.status) {
        case ResultStatus.success:
          if (result.value == null) {
            return Result.failure(Failure.fromMessage(
                message: AppFailureMessage.unExpctedErrorMessage));
          }
          var entity = SignInEntity.fromMap(result.value!.toMap());
          return Result.success(entity);
        case ResultStatus.error:
          return Result.failure(result.error);
      }
    });
  }
}
