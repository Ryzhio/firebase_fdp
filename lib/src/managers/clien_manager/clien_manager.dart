import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/managers/clien_manager/decodables/clien_list_decodable.dart';
import 'package:firebase_fdp/src/managers/clien_manager/interfaces/clien_manager_interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultClienManager extends ClienManager {
  final String _clienListPath = "clienList";
  //Dependencias
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultClienManager({RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<ClienListDecodable> fetchClienList() async {
    try {
      final response =
          await _realtimeDatabaseService.getData(path: _clienListPath);
      ClienListDecodable decodable =
          _mapToClienListDecodable(response: response);
      return decodable;
    } on Failure catch (f) {
      return Future.error(f);
    }
  }

  @override
  Future<ClienListDecodable> fetchPopularClienList() async {
    final fullClienList = await fetchClienList();
    fullClienList.clienList =
        _mapPopularClienList(clienList: fullClienList.clienList ?? []);
    return fullClienList;
  }

  @override
  Future<ClienListDecodable> fetchClienListByCategory(
      {required int categoId}) async {
    final fullClienList = await fetchClienList();
    fullClienList.clienList = _mapClienListByCategory(
        clienList: fullClienList.clienList ?? [], categoId: categoId);
    return fullClienList;
  }
}

extension Mappers on DefaultClienManager {
  ClienListDecodable _mapToClienListDecodable(
      {required Map<String, dynamic> response}) {
    List<ClienList> clienList = [];
    response.forEach((key, value) {
      clienList.add(ClienList.fromMap(value));
    });
    return ClienListDecodable(clienList: clienList);
  }

  List<ClienList> _mapPopularClienList({required List<ClienList> clienList}) {
    List<ClienList> clienListFiltered = [];
    clienList.forEach((clien) {
      if (clien.isPopularThisWeek) {
        clienListFiltered.add(clien);
      }
    });
    return clienListFiltered;
  }

  List<ClienList> _mapClienListByCategory({
    required List<ClienList> clienList,
    required int categoId,
  }) {
    List<ClienList> clienListFiltered = [];
    clienList.forEach((clien) {
      if (clien.clientesId == categoId) {
        clienListFiltered.add(clien);
      }
    });
    return clienListFiltered;
  }
}
