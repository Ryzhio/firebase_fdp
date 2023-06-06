import 'package:firebase_fdp/src/base/constants/error_messages.dart';
import 'package:firebase_fdp/src/features/data/repositorys/user/user_body_parameters.dart';
import 'package:firebase_fdp/src/features/data/decodables/user/user_decodable.dart';
import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

abstract class _Paths {
  static String userCollection = "users/";
}

class DefaultSaveUserDataRepository extends SaveUserDataRepository {
  //Dependencias
  RealtimeDatabaseService _realtimeDatabaseService;

  DefaultSaveUserDataRepository(
      {RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<Result<UserDecodable, Failure>> saveUserData(
      {required UserBodyParameters parameters}) async {
    if (parameters.localId == null) {
      return Result.failure(Failure.fromMessage(
          message: AppFailureMessage.unExpctedErrorMessage));
    }
    //Create el Path
    var path = _Paths.userCollection + parameters.localId!;

    try {
      final result = await _realtimeDatabaseService.putData(
          bodyParams: parameters.toMap(), path: path);
      UserDecodable decodable = UserDecodable.fromMap(result);
      return Result.success(decodable);
    } on Failure catch (f) {
      return Result.failure(f);
    }
  }
}
