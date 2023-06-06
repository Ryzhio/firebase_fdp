import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/managers/conte_manager/decodables/conte_list_decodable.dart';
import 'package:firebase_fdp/src/managers/conte_manager/interfaces/conte_manager_interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultConteManager extends ConteManager {
  final String _conteListPath = "conteList";
  //Dependencias
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultConteManager({RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<ConteListDecodable> fetchConteList() async {
    try {
      final response =
          await _realtimeDatabaseService.getData(path: _conteListPath);
      ConteListDecodable decodable =
          _mapToConteListDecodable(response: response);
      return decodable;
    } on Failure catch (f) {
      return Future.error(f);
    }
  }

  @override
  Future<ConteListDecodable> fetchPopularConteList() async {
    final fullConteList = await fetchConteList();
    fullConteList.conteList =
        _mapPopularConteList(conteList: fullConteList.conteList ?? []);
    return fullConteList;
  }

  @override
  Future<ConteListDecodable> fetchConteListByCategory(
      {required int categoId}) async {
    final fullConteList = await fetchConteList();
    fullConteList.conteList = _mapConteListByCategory(
        conteList: fullConteList.conteList ?? [], categoId: categoId);
    return fullConteList;
  }

  @override
  Future<ConteListDecodable> fetchConteListByQuery(
      {required String query}) async {
    final fullConteList = await fetchConteList();
    fullConteList.conteList = _mapConteListByQuery(
        conteList: fullConteList.conteList ?? [], query: query);
    return fullConteList;
  }

  @override
  Future<ConteListDecodable> fetchConteListByRecentSearches(
      {required List<String> conteIds}) async {
    final fullConteList = await fetchConteList();
    fullConteList.conteList = _mapConteListByRecentSearches(
        conteList: fullConteList.conteList ?? [], conteIds: conteIds);
    return fullConteList;
  }
}

extension Mappers on DefaultConteManager {
  ConteListDecodable _mapToConteListDecodable(
      {required Map<String, dynamic> response}) {
    List<ConteList> conteList = [];
    response.forEach((key, value) {
      conteList.add(ConteList.fromMap(value));
    });
    return ConteListDecodable(conteList: conteList);
  }

  List<ConteList> _mapPopularConteList({required List<ConteList> conteList}) {
    List<ConteList> conteListFiltered = [];
    conteList.forEach((conte) {
      if (conte.isPopularThisWeek) {
        conteListFiltered.add(conte);
      }
    });
    return conteListFiltered;
  }

  List<ConteList> _mapConteListByCategory({
    required List<ConteList> conteList,
    required int categoId,
  }) {
    List<ConteList> conteListFiltered = [];
    conteList.forEach((conte) {
      if (conte.id == categoId) {
        conteListFiltered.add(conte);
      }
    });
    return conteListFiltered;
  }

  List<ConteList> _mapConteListByQuery({
    required List<ConteList> conteList,
    required String query,
  }) {
    List<ConteList> conteListFiltered = [];
    conteList.forEach((conte) {
      if (query.isNotEmpty &&
          conte.contenedores.toLowerCase().contains(query.toLowerCase())) {
        conteListFiltered.add(conte);
      }
    });
    return conteListFiltered;
  }

  List<ConteList> _mapConteListByRecentSearches({
    required List<ConteList> conteList,
    required List<String> conteIds,
  }) {
    List<ConteList> conteListFiltered = [];
    for (var conteId in conteIds) {
      conteList.forEach((conte) {
        if (conte.conteId == conteId) {
          conteListFiltered.add(conte);
        }
      });
    }
    return conteListFiltered;
  }
}
