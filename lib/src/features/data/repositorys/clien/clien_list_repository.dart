import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/managers/clien_manager/clien_manager.dart';
import 'package:firebase_fdp/src/managers/clien_manager/decodables/clien_list_decodable.dart';
import 'package:firebase_fdp/src/managers/clien_manager/interfaces/clien_manager_interfaces.dart';

class DefaultClienListRepository extends ClienListRepository {
  //Dependencias
  final ClienManager _clienManager;

  DefaultClienListRepository({ClienManager? clienManager})
      : _clienManager = clienManager ?? DefaultClienManager();

  @override
  Future<ClienListDecodable> fetchPopularClienList() {
    return _clienManager.fetchPopularClienList();
  }

  @override
  Future<ClienListDecodable> fetchClienList() {
    return _clienManager.fetchClienList();
  }

  @override
  Future<ClienListDecodable> fetchClienListByCategory({required int categoId}) {
    return _clienManager.fetchClienListByCategory(categoId: categoId);
  }
}
