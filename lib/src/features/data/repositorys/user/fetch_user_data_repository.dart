import 'package:firebase_fdp/src/features/data/decodables/user/user_decodable.dart';
import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';

extension Path on DefaultFetchUserDataRepository {
  static String path = "users/";
}

class DefaultFetchUserDataRepository extends FetchUserDataRepository {
  //Dependecias
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultFetchUserDataRepository(
      {RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<Result<UserDecodable, Failure>> fetchUserData(
      {required String localId}) async {
    var fullpath = path + localId;

    try {
      final result = await _realtimeDatabaseService.getData(path: fullpath);
      UserDecodable _decodable = UserDecodable.fromMap(result);
      return Result.success(_decodable);
    } on Failure catch (f) {
      return Result.failure(f);
    }
  }
}
