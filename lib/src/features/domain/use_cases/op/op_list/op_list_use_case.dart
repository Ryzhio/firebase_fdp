import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/op/op_list_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/op/op_entity.dart';

abstract class OpListUseCase {
  Future<OpListEntity> fetchPopularOpList();
  Future<OpListEntity> fetchOpList();
  Future<OpListEntity> fetchOpListByCategory({required int categoId});
}

class DefaultOpListUseCase extends OpListUseCase {
  //DEPENDENCIAS
  final OpListRepository _opListRepository;

  DefaultOpListUseCase({OpListRepository? opListRepository})
      : _opListRepository = opListRepository ?? DefaultOpListRepository();

  @override
  Future<OpListEntity> fetchPopularOpList() async {
    final opListDecodable = await _opListRepository.fetchPopularOpList();
    return OpListEntity.fromMap(opListDecodable.toMap());
  }

  @override
  Future<OpListEntity> fetchOpList() async {
    final opListDecodable = await _opListRepository.fetchOpList();
    return OpListEntity.fromMap(opListDecodable.toMap());
  }

  @override
  Future<OpListEntity> fetchOpListByCategory({required int categoId}) async {
    final opListDecodable =
        await _opListRepository.fetchOpListByCategory(categoId: categoId);
    return OpListEntity.fromMap(opListDecodable.toMap());
  }
}
