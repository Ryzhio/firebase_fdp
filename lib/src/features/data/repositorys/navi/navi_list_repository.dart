import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/managers/navi_manager/decodables/navi_list_decodable.dart';
import 'package:firebase_fdp/src/managers/navi_manager/interfaces/navi_manager_interfaces.dart';
import 'package:firebase_fdp/src/managers/navi_manager/navi_manager.dart';

class DefaultNaviListRepository extends NaviListRepository {
  //Dependencias
  final NaviManager _naviManager;

  DefaultNaviListRepository({NaviManager? naviManager})
      : _naviManager = naviManager ?? DefaultNaviManager();

  @override
  Future<NaviListDecodable> fetchPopularNaviList() {
    return _naviManager.fetchPopularNaviList();
  }

  @override
  Future<NaviListDecodable> fetchNaviList() {
    return _naviManager.fetchNaviList();
  }

  @override
  Future<NaviListDecodable> fetchNaviListByCategory({required int categoId}) {
    return _naviManager.fetchNaviListByCategory(categoId: categoId);
  }
}
