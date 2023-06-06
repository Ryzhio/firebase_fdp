import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/containerspagecountry/containerspagecountry_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/containerpagecountry/containerpagecountry_entity.dart';

abstract class FetchContainerPageCountryUseCase {
  Future<ContainersPageCountryEntity> execute();
}

class DefaultFetchContainerPageCountryUseCase
    extends FetchContainerPageCountryUseCase {
  // * Dependencias
  final ContainersPageCountryRepository _containersPageCountryRepository;

  DefaultFetchContainerPageCountryUseCase(
      {ContainersPageCountryRepository? containersPageCountryRepository})
      : _containersPageCountryRepository = containersPageCountryRepository ??
            DefaultContainersPageCountryRepository();

  @override
  Future<ContainersPageCountryEntity> execute() async {
    final decodable =
        await _containersPageCountryRepository.fetchContainersPageCountry();
    return ContainersPageCountryEntity.fromMap(decodable.toMap());
  }
}
