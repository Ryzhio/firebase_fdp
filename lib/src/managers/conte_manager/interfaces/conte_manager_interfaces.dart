import 'package:firebase_fdp/src/managers/conte_manager/decodables/conte_list_decodable.dart';

abstract class ConteManager {
  Future<ConteListDecodable> fetchConteList();
  Future<ConteListDecodable> fetchPopularConteList();
  Future<ConteListDecodable> fetchConteListByCategory({required int categoId});
  Future<ConteListDecodable> fetchConteListByQuery({required String query});
  Future<ConteListDecodable> fetchConteListByRecentSearches(
      {required List<String> conteIds});
}
