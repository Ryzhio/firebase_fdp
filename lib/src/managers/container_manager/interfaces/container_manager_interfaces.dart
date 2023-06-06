import 'package:firebase_fdp/src/managers/container_manager/decodables/container_list_decodable.dart';

abstract class ContainerManager {
  Future<ContainerListDecodable> fetchPopularContainerList();
  Future<ContainerListDecodable> fetchContainerList();
  Future<ContainerListDecodable> fetchContainerListByCategory(
      {required int categoryId});
  // Future<ContainerListDecodable> fetchContainerListByQuery(
  //     {required String query});
  // Future<ContainerListDecodable> fetchContainerListByRecentSearches(
  //     {required List<String> containerIds});
}
