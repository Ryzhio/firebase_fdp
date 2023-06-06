import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/containerpage/containerpage_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/containerspage/containerspage_entity.dart';

abstract class FetchContainerPageUseCase {
  Future<ContainersPageEntity> execute();
}

class DefaultFetchContainerPageUseCase extends FetchContainerPageUseCase {
  // * Dependencias
  final ContainersPageRepository _containersPageRepository;

  DefaultFetchContainerPageUseCase(
      {ContainersPageRepository? containersPageRepository})
      : _containersPageRepository =
            containersPageRepository ?? DefaultContainersPageRepository();

  @override
  Future<ContainersPageEntity> execute() async {
    final decodable = await _containersPageRepository.fetchContainersPage();
    return ContainersPageEntity.fromMap(decodable.toMap());
  }
}
