import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/managers/op_manager/decodables/op_list_decodable.dart';
import 'package:firebase_fdp/src/managers/op_manager/interfaces/op_manager_interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultOpManager extends OpManager {
  final String _opListPath = "opList";
  //Dependencias
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultOpManager({RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<OpListDecodable> fetchOpList() async {
    try {
      final response =
          await _realtimeDatabaseService.getData(path: _opListPath);
      OpListDecodable decodable = _mapToOpListDecodable(response: response);
      return decodable;
    } on Failure catch (f) {
      return Future.error(f);
    }
  }

  @override
  Future<OpListDecodable> fetchPopularOpList() async {
    final fullOpList = await fetchOpList();
    fullOpList.opList = _mapPopularOpList(opList: fullOpList.opList ?? []);
    return fullOpList;
  }

  @override
  Future<OpListDecodable> fetchOpListByCategory({required int categoId}) async {
    final fullOpList = await fetchOpList();
    fullOpList.opList = _mapOpListByCategory(
        opList: fullOpList.opList ?? [], categoId: categoId);
    return fullOpList;
  }
}

extension Mappers on DefaultOpManager {
  OpListDecodable _mapToOpListDecodable(
      {required Map<String, dynamic> response}) {
    List<OpList> opList = [];
    response.forEach((key, value) {
      opList.add(OpList.fromMap(value));
    });
    return OpListDecodable(opList: opList);
  }

  List<OpList> _mapPopularOpList({required List<OpList> opList}) {
    List<OpList> opListFiltered = [];
    opList.forEach((op) {
      if (op.isPopularThisWeek) {
        opListFiltered.add(op);
      }
    });
    return opListFiltered;
  }

  List<OpList> _mapOpListByCategory({
    required List<OpList> opList,
    required int categoId,
  }) {
    List<OpList> opListFiltered = [];
    opList.forEach((op) {
      if (op.logisticosId == categoId) {
        opListFiltered.add(op);
      }
    });
    return opListFiltered;
  }
}
