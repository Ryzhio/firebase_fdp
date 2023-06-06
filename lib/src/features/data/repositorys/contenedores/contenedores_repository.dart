import 'package:firebase_fdp/src/features/data/decodables/contenedores/contenedores_decodable.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultContenedoresRepository extends ContenedoresRepository {
  String _path = "contenedoresList/";

  // * DEPENDENCIAS
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultContenedoresRepository(
      {RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<ContenedoresDecodable> fetchContenedores() async {
    final response = await _realtimeDatabaseService.getData(path: _path);
    return ContenedoresDecodable.fromMap(response);
  }

  // @override
  // Future<ContenedoresDecodable> fetchContenedoresByCategory({required int categpryId}) {
  //   // TODO: implement fetchContenedoresByCategory
  //   throw UnimplementedError();
  // }

  // @override
  // Future<ContenedoresDecodable> fetchContenedoresByQuery({required String query}) {
  //   // TODO: implement fetchContenedoresByQuery
  //   throw UnimplementedError();
  // }

  // @override
  // Future<ContenedoresDecodable> fetchContenedoresByRecentSearches({required List<String> contenedorIds}) {
  //   // TODO: implement fetchContenedoresByRecentSearches
  //   throw UnimplementedError();
  // }
}
