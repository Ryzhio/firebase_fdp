import 'package:firebase_fdp/src/managers/clien_manager/decodables/clien_list_decodable.dart';

abstract class ClienManager {
  Future<ClienListDecodable> fetchPopularClienList();
  Future<ClienListDecodable> fetchClienList();
  Future<ClienListDecodable> fetchClienListByCategory({required int categoId});
  // Future<ContainerListDecodable> fetchContainerListByQuery(
  //     {required String query});
  // Future<ContainerListDecodable> fetchContainerListByRecentSearches(
  //     {required List<String> containerIds});
}
