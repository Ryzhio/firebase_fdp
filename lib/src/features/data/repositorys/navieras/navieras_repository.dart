import 'package:firebase_fdp/src/features/data/decodables/navieras_decodable/navieras_decodables.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultNavierasRepository extends NavierasRepository {
  String _path = "navierasList/";

  // * DEPENDENCIAS
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultNavierasRepository({RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<NavierasDecodable> fetchNavieras() async {
    final response = await _realtimeDatabaseService.getData(path: _path);
    return NavierasDecodable.fromMap(response);
  }
}
