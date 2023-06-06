import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/conte/conte_list_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/conte/conte_entity.dart';

abstract class ConteListUseCase {
  Future<ConteListEntity> fetchConteList();
  Future<ConteListEntity> fetchPopularConteList();
  Future<ConteListEntity> fetchConteListByCategory({required int categoId});
  Future<ConteListEntity> fetchConteListByQuery({required String query});
  Future<ConteListEntity> fetchConteListByRecentSearches(
      {required List<String> conteIds});
}

class DefaultConteListUseCase extends ConteListUseCase {
  //DEPENDENCIAS
  final ConteListRepository _conteListRepository;

  DefaultConteListUseCase({ConteListRepository? conteListRepository})
      : _conteListRepository =
            conteListRepository ?? DefaultConteListRepository();

  @override
  Future<ConteListEntity> fetchConteList() async {
    final conteListDecodable = await _conteListRepository.fetchConteList();
    return ConteListEntity.fromMap(conteListDecodable.toMap());
  }

  @override
  Future<ConteListEntity> fetchPopularConteList() async {
    final conteListDecodable =
        await _conteListRepository.fetchPopularConteList();
    return ConteListEntity.fromMap(conteListDecodable.toMap());
  }

  @override
  Future<ConteListEntity> fetchConteListByCategory(
      {required int categoId}) async {
    final conteListDecodable =
        await _conteListRepository.fetchConteListByCategory(categoId: categoId);
    return ConteListEntity.fromMap(conteListDecodable.toMap());
  }

  @override
  Future<ConteListEntity> fetchConteListByQuery({required String query}) async {
    final conteListDecodable =
        await _conteListRepository.fetchConteListByQuery(query: query);
    return ConteListEntity.fromMap(conteListDecodable.toMap());
  }

  @override
  Future<ConteListEntity> fetchConteListByRecentSearches(
      {required List<String> conteIds}) async {
    final conteListDecodable = await _conteListRepository
        .fetchConteListByRecentSearches(conteIds: conteIds);
    return ConteListEntity.fromMap(conteListDecodable.toMap());
  }
}
