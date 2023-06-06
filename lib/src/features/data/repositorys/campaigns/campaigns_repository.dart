import 'package:firebase_fdp/src/features/data/decodables/campaigns_decodable/campaigns_decodable.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultCampaignsRepository extends CampaignsRepository {
  String _path = "campaignsList/";

  // * Dependencias
  final RealtimeDatabaseService _realtimeDataBaseService;

  DefaultCampaignsRepository({RealtimeDatabaseService? realtimeDataBaseService})
      : _realtimeDataBaseService =
            realtimeDataBaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<CampaignsDecodable> fetchCampaigns() async {
    final response = await _realtimeDataBaseService.getData(path: _path);
    return CampaignsDecodable.fromMap(response);
  }
}
