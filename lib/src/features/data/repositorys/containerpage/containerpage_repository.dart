import 'package:firebase_fdp/src/features/data/decodables/containerpage_decodable/containerpage_decodable.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultContainersPageRepository extends ContainersPageRepository {
  String _path = "containerspageList/";

  // * DEPENDENCIAS
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultContainersPageRepository(
      {RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<ContainersPageDecodable> fetchContainersPage() async {
    final response = await _realtimeDatabaseService.getData(path: _path);
    return ContainersPageDecodable.fromMap(response);
  }
}
