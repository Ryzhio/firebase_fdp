import 'package:firebase_fdp/src/features/data/decodables/logisticos_decodable/logisticos_decodable.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultLogisticosRepository extends LogisticosRepository {
  String _path = "logisticosList/";

  // * DEPENDENCIAS
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultLogisticosRepository(
      {RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<LogisticosDecodable> fetchLogisticos() async {
    final response = await _realtimeDatabaseService.getData(path: _path);
    return LogisticosDecodable.fromMap(response);
  }
}
