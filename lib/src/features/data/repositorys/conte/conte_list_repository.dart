import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/managers/conte_manager/conte_manager.dart';
import 'package:firebase_fdp/src/managers/conte_manager/decodables/conte_list_decodable.dart';
import 'package:firebase_fdp/src/managers/conte_manager/interfaces/conte_manager_interfaces.dart';

class DefaultConteListRepository extends ConteListRepository {
  //Dependencias
  final ConteManager _conteManager;

  DefaultConteListRepository({ConteManager? conteManager})
      : _conteManager = conteManager ?? DefaultConteManager();

  @override
  Future<ConteListDecodable> fetchConteList() {
    return _conteManager.fetchConteList();
  }

  @override
  Future<ConteListDecodable> fetchPopularConteList() {
    return _conteManager.fetchPopularConteList();
  }

  @override
  Future<ConteListDecodable> fetchConteListByCategory({required int categoId}) {
    return _conteManager.fetchConteListByCategory(categoId: categoId);
  }

  @override
  Future<ConteListDecodable> fetchConteListByQuery({required String query}) {
    return _conteManager.fetchConteListByQuery(query: query);
  }

  @override
  Future<ConteListDecodable> fetchConteListByRecentSearches(
      {required List<String> conteIds}) {
    return _conteManager.fetchConteListByRecentSearches(conteIds: conteIds);
  }
}
