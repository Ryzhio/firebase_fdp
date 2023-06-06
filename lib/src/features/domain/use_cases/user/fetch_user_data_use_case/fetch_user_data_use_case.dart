import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/features/data/repositorys/user/fetch_user_data_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/user/user_entity.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

abstract class FetchUserDataUseCase {
  Future<Result<UserEntity, Failure>> execute({
    required String localId,
  });
}

class DefaultFetchUserDataUseCase extends FetchUserDataUseCase {
  //Depedencias
  final FetchUserDataRepository _fetchUserDataRepository;

  DefaultFetchUserDataUseCase(
      {FetchUserDataRepository? fetchUserDataRepository})
      : _fetchUserDataRepository =
            fetchUserDataRepository ?? DefaultFetchUserDataRepository();

  @override
  Future<Result<UserEntity, Failure>> execute({required String localId}) {
    return _fetchUserDataRepository
        .fetchUserData(localId: localId)
        .then((result) {
      switch (result.status) {
        case ResultStatus.success:
          if (result.value == null) {
            return Result.failure(Failure.fromMessage(
                message: AppFailureMessage.unExpctedErrorMessage));
          }
          return Result.success(UserEntity.fromMap(result.value!.toMap()));
        case ResultStatus.error:
          return Result.failure(result.error);
      }
    });
  }
}
