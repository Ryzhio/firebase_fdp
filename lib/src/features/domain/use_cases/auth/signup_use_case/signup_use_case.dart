import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/signup_repository/signup_repository.dart';
import 'package:firebase_fdp/src/features/data/repositorys/auth/signup_repository/signup_repository_parameters.dart';
import 'package:firebase_fdp/src/features/domain/entities/auth/singup_entity/signup_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/user/user_entity.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/auth/signup_use_case/signup_use_case_parameters.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/user/save_user_data_usecase/save_user_data_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/user/save_user_data_usecase/save_user_data_use_case_parameters.dart';
import 'package:firebase_fdp/src/utils/helpers/date/date_helpers/date_helpers.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:firebase_fdp/src/utils/helpers/user_photos/user_photo_helpers/user_photo_helpers.dart';

abstract class SignUpUseCase {
  Future<Result<SignUpEntity, Failure>> execute(
      {required SignUpUseCaseParameters params});
}

class DefaultSignUpUseCase extends SignUpUseCase {
  //Dependencias
  SignUpRepository _signUpRepository;
  SaveUserDataUseCase _saveUserDataUseCase;

  DefaultSignUpUseCase(
      {SignUpRepository? signUpRepository,
      SaveUserDataUseCase? saveUserDataUseCase})
      : _signUpRepository = signUpRepository ?? DefaultSignUpRepository(),
        _saveUserDataUseCase =
            saveUserDataUseCase ?? DefaultSaveUserDataUseCase();

  @override
  Future<Result<SignUpEntity, Failure>> execute(
      {required SignUpUseCaseParameters params}) {
    return _signUpRepository
        .signUp(
            params: SignUpRepositoryParameters(
                email: params.email, password: params.password))
        .then((result) {
      switch (result.status) {
        case ResultStatus.success:
          //Null Check
          if (result.value == null) {
            return Result.failure(Failure.fromMessage(
                message: AppFailureMessage.unExpctedErrorMessage));
          }
          SignUpEntity entity = SignUpEntity.fromMap(result.value!.toMap());

          return saveUserDataInDataBase(params: params, entity: entity);
        case ResultStatus.error:
          return Result.failure(result.error);
      }
    });
  }
}

extension on DefaultSignUpUseCase {
  Future<Result<SignUpEntity, Failure>> saveUserDataInDataBase(
      {required SignUpUseCaseParameters params, required SignUpEntity entity}) {
    SaveUserDataUseCaseParameters _params = SaveUserDataUseCaseParameters(
      localId: entity.localId,
      role: UserRole.user,
      username: params.username,
      email: params.email,
      phone: params.phone,
      dateOfBirth: params.date,
      startDate: DateHelpers.getStartDate(),
      photo: UserPhotoHelper.defaultUserPhoto,
      shippingAddress: '',
      billingAddress: '',
      idToken: entity.idToken,
    );

    return _saveUserDataUseCase.execute(parameters: _params).then((result) {
      switch (result.status) {
        case ResultStatus.success:
          return Result.success(entity);
        case ResultStatus.error:
          return Result.failure(result.error);
      }
    });
  }
}
