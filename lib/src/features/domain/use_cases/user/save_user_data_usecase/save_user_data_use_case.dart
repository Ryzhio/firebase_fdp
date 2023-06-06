import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/features/data/repositorys/user/save_user_data_repository.dart';
import 'package:firebase_fdp/src/features/data/repositorys/user/user_body_parameters.dart';
import 'package:firebase_fdp/src/features/domain/entities/user/user_entity.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/user/save_user_data_usecase/save_user_data_use_case_parameters.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

abstract class SaveUserDataUseCase {
  Future<Result<UserEntity, Failure>> execute(
      {required SaveUserDataUseCaseParameters parameters});
}

class DefaultSaveUserDataUseCase extends SaveUserDataUseCase {
  //Dependencias
  final SaveUserDataRepository _saveUserDataRepository;

  DefaultSaveUserDataUseCase({SaveUserDataRepository? saveUserDataRepository})
      : _saveUserDataRepository =
            saveUserDataRepository ?? DefaultSaveUserDataRepository();

  @override
  Future<Result<UserEntity, Failure>> execute(
      {required SaveUserDataUseCaseParameters parameters}) async {
    UserBodyParameters _parameters = UserBodyParameters(
      localId: parameters.localId,
      role: parameters.role?.toShortString(),
      username: parameters.username,
      email: parameters.email,
      phone: parameters.phone,
      dateOfBirth: parameters.dateOfBirth,
      startDate: parameters.startDate,
      photo: parameters.photo,
      shippingAddress: parameters.shippingAddress,
      billingAddress: parameters.billingAddress,
      idToken: parameters.idToken,
    );
    return _saveUserDataRepository
        .saveUserData(parameters: _parameters)
        .then((result) {
      switch (result.status) {
        case ResultStatus.success:
          if (result.value == null) {
            return Result.failure(Failure.fromMessage(
                message: AppFailureMessage.unExpctedErrorMessage));
          }
          var _entity = UserEntity.fromMap(result.value!.toMap());
          return Result.success(_entity);
        case ResultStatus.error:
          return Result.failure(result.error);
      }
    });
  }
}
