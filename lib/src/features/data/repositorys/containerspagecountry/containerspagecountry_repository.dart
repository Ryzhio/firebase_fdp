import 'package:firebase_fdp/src/features/data/decodables/containerpagecountry_decodable/containerpagecountry_decodable.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultContainersPageCountryRepository
    extends ContainersPageCountryRepository {
  String _path = "containerspagecountryList/";

  // * DEPENDENCIAS
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultContainersPageCountryRepository(
      {RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<ContainersPageCountryDecodable> fetchContainersPageCountry() async {
    final response = await _realtimeDatabaseService.getData(path: _path);
    return ContainersPageCountryDecodable.fromMap(response);
  }
}
