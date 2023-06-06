import 'package:firebase_fdp/src/features/data/decodables/clientes_decodable/clientes_decodables.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultClientesRepository extends ClientesRepository {
  String _path = "clientesList/";

  // * DEPENDENCIAS
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultClientesRepository({RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<ClientesDecodable> fetchClientes() async {
    final response = await _realtimeDatabaseService.getData(path: _path);
    return ClientesDecodable.fromMap(response);
  }
}
