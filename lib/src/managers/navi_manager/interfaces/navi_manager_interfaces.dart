import 'package:firebase_fdp/src/managers/navi_manager/decodables/navi_list_decodable.dart';

abstract class NaviManager {
  Future<NaviListDecodable> fetchPopularNaviList();
  Future<NaviListDecodable> fetchNaviList();
  Future<NaviListDecodable> fetchNaviListByCategory({required int categoId});
  // Future<ContainerListDecodable> fetchContainerListByQuery(
  //     {required String query});
  // Future<ContainerListDecodable> fetchContainerListByRecentSearches(
  //     {required List<String> containerIds});
}
