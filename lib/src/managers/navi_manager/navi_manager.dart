import 'package:firebase_fdp/src/base/apperror/app_error.dart';
import 'package:firebase_fdp/src/managers/navi_manager/decodables/navi_list_decodable.dart';
import 'package:firebase_fdp/src/managers/navi_manager/interfaces/navi_manager_interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/interface/interfaces.dart';
import 'package:firebase_fdp/src/services/firebase_service/realtime_database_service/services/realtime_database_services.dart';

class DefaultNaviManager extends NaviManager {
  final String _naviListPath = "naviList";
  //Dependencias
  final RealtimeDatabaseService _realtimeDatabaseService;

  DefaultNaviManager({RealtimeDatabaseService? realtimeDatabaseService})
      : _realtimeDatabaseService =
            realtimeDatabaseService ?? DefaultRealtimeDatabaseService();

  @override
  Future<NaviListDecodable> fetchNaviList() async {
    try {
      final response =
          await _realtimeDatabaseService.getData(path: _naviListPath);
      NaviListDecodable decodable = _mapToNaviListDecodable(response: response);
      return decodable;
    } on Failure catch (f) {
      return Future.error(f);
    }
  }

  @override
  Future<NaviListDecodable> fetchPopularNaviList() async {
    final fullNaviList = await fetchNaviList();
    fullNaviList.naviList =
        _mapPopularNaviList(naviList: fullNaviList.naviList ?? []);
    return fullNaviList;
  }

  @override
  Future<NaviListDecodable> fetchNaviListByCategory(
      {required int categoId}) async {
    final fullNaviList = await fetchNaviList();
    fullNaviList.naviList = _mapNaviListByCategory(
        naviList: fullNaviList.naviList ?? [], categoId: categoId);
    return fullNaviList;
  }
}

extension Mappers on DefaultNaviManager {
  NaviListDecodable _mapToNaviListDecodable(
      {required Map<String, dynamic> response}) {
    List<NaviList> naviList = [];
    response.forEach((key, value) {
      naviList.add(NaviList.fromMap(value));
    });
    return NaviListDecodable(naviList: naviList);
  }

  List<NaviList> _mapPopularNaviList({required List<NaviList> naviList}) {
    List<NaviList> naviListFiltered = [];
    naviList.forEach((navi) {
      if (navi.isPopularThisWeek) {
        naviListFiltered.add(navi);
      }
    });
    return naviListFiltered;
  }

  List<NaviList> _mapNaviListByCategory({
    required List<NaviList> naviList,
    required int categoId,
  }) {
    List<NaviList> naviListFiltered = [];
    naviList.forEach((navi) {
      if (navi.navierasId == categoId) {
        naviListFiltered.add(navi);
      }
    });
    return naviListFiltered;
  }
}
