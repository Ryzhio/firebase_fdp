import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/clien/clien_list_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/clien/clien_entity.dart';

abstract class ClienListUseCase {
  Future<ClienListEntity> fetchPopularClienList();
  Future<ClienListEntity> fetchClienList();
  Future<ClienListEntity> fetchClienListByCategory({required int categoId});
}

class DefaultClienListUseCase extends ClienListUseCase {
  //DEPENDENCIAS
  final ClienListRepository _clienListRepository;

  DefaultClienListUseCase({ClienListRepository? clienListRepository})
      : _clienListRepository =
            clienListRepository ?? DefaultClienListRepository();

  @override
  Future<ClienListEntity> fetchPopularClienList() async {
    final clienListDecodable =
        await _clienListRepository.fetchPopularClienList();
    return ClienListEntity.fromMap(clienListDecodable.toMap());
  }

  @override
  Future<ClienListEntity> fetchClienList() async {
    final clienListDecodable = await _clienListRepository.fetchClienList();
    return ClienListEntity.fromMap(clienListDecodable.toMap());
  }

  @override
  Future<ClienListEntity> fetchClienListByCategory(
      {required int categoId}) async {
    final clienListDecodable =
        await _clienListRepository.fetchClienListByCategory(categoId: categoId);
    return ClienListEntity.fromMap(clienListDecodable.toMap());
  }
}
