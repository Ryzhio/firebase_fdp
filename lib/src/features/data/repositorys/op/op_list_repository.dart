import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/managers/op_manager/decodables/op_list_decodable.dart';
import 'package:firebase_fdp/src/managers/op_manager/interfaces/op_manager_interfaces.dart';
import 'package:firebase_fdp/src/managers/op_manager/op_manager.dart';

class DefaultOpListRepository extends OpListRepository {
  //Dependencias
  final OpManager _opManager;

  DefaultOpListRepository({OpManager? opManager})
      : _opManager = opManager ?? DefaultOpManager();

  @override
  Future<OpListDecodable> fetchPopularOpList() {
    return _opManager.fetchPopularOpList();
  }

  @override
  Future<OpListDecodable> fetchOpList() {
    return _opManager.fetchOpList();
  }

  @override
  Future<OpListDecodable> fetchOpListByCategory({required int categoId}) {
    return _opManager.fetchOpListByCategory(categoId: categoId);
  }
}
