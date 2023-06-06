import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/container/container_list_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/containers/container_list_entity.dart';

abstract class ContainerListUseCase {
  Future<ContainerListEntity> fetchPopularContainerList();
  Future<ContainerListEntity> fetchContainerList();
  Future<ContainerListEntity> fetchContainerListByCategory(
      {required int categoryId});
  // Future<ContainerListEntity> fetchContainerListByQuery(
  //     {required String query});
  // Future<ContainerListEntity> fetchContainerListByRecentSearches(
  //     {required List<String> containerIds});
}

class DefaultContainerListUseCase extends ContainerListUseCase {
  //DEPENDENCIAS
  final ContainerListRepository _containerListRepository;

  DefaultContainerListUseCase(
      {ContainerListRepository? containerListRepository})
      : _containerListRepository =
            containerListRepository ?? DefaultContainerListRepository();

  @override
  Future<ContainerListEntity> fetchPopularContainerList() async {
    final containerListDecodable =
        await _containerListRepository.fetchPopularContainerList();
    return ContainerListEntity.fromMap(containerListDecodable.toMap());
  }

  @override
  Future<ContainerListEntity> fetchContainerList() async {
    final containerListDecodable =
        await _containerListRepository.fetchContainerList();
    return ContainerListEntity.fromMap(containerListDecodable.toMap());
  }

  @override
  Future<ContainerListEntity> fetchContainerListByCategory(
      {required int categoryId}) async {
    final containerListDecodable = await _containerListRepository
        .fetchContainerListByCategory(categoryId: categoryId);
    return ContainerListEntity.fromMap(containerListDecodable.toMap());
  }
}
