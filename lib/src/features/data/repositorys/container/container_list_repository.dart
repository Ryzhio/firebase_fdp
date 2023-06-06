import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/managers/container_manager/container_manager.dart';
import 'package:firebase_fdp/src/managers/container_manager/decodables/container_list_decodable.dart';
import 'package:firebase_fdp/src/managers/container_manager/interfaces/container_manager_interfaces.dart';

class DefaultContainerListRepository extends ContainerListRepository {
  //Dependencias
  final ContainerManager _containerManager;

  DefaultContainerListRepository({ContainerManager? containerManager})
      : _containerManager = containerManager ?? DefaultContainersManager();

  @override
  Future<ContainerListDecodable> fetchPopularContainerList() {
    return _containerManager.fetchPopularContainerList();
  }

  @override
  Future<ContainerListDecodable> fetchContainerList() {
    return _containerManager.fetchContainerList();
  }

  @override
  Future<ContainerListDecodable> fetchContainerListByCategory(
      {required int categoryId}) {
    return _containerManager.fetchContainerListByCategory(
        categoryId: categoryId);
  }
}
