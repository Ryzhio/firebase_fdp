import 'package:firebase_fdp/src/features/data/repositorys/local_Storage/remove_local_storage_repository.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/local_storage_use_case_parameters.dart';

abstract class RemoveLocalStorageUseCase {
  Future<void> execute({required RemoveLocalStorageParameters parameters});
}

class DefaultRemoveLocalStorageUseCase extends RemoveLocalStorageUseCase {
  //Dependencias
  final RemoveLocalStorageRepository _removeLocalStorageRepository;
  DefaultRemoveLocalStorageUseCase(
      {RemoveLocalStorageRepository? removeLocalStorageRepository})
      : _removeLocalStorageRepository = removeLocalStorageRepository ??
            DefaultRemoveLocalStorageRepository();

  @override
  Future<void> execute(
      {required RemoveLocalStorageParameters parameters}) async {
    return await _removeLocalStorageRepository.removeInLocalStorage(
        key: parameters.key);
  }
}
