import 'package:firebase_fdp/src/managers/op_manager/decodables/op_list_decodable.dart';

abstract class OpManager {
  Future<OpListDecodable> fetchPopularOpList();
  Future<OpListDecodable> fetchOpList();
  Future<OpListDecodable> fetchOpListByCategory({required int categoId});
  // Future<ContainerListDecodable> fetchContainerListByQuery(
  //     {required String query});
  // Future<ContainerListDecodable> fetchContainerListByRecentSearches(
  //     {required List<String> containerIds});
}
