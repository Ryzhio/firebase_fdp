import 'package:firebase_fdp/src/base/constants/local_storage_keys.dart';
import 'package:firebase_fdp/src/features/data/repositorys/local_Storage/save_local_storage_repository.dart';
import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/fetch_local_storage_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/local_storage_use_case_parameters.dart';

abstract class SaveLocalStorageUseCase {
  Future<void> execute({required SaveLocalStorageParameters parameters});
  Future<void> saveRecentSearchInLocalStorage({required String containerId});
  Future<void> clearRecentSearchInLocalStorage();
}

class DefaultSaveLocalStorageUseCase extends SaveLocalStorageUseCase {
  //Dependencias
  final SaveLocalStorageRepository _saveLocalStorageRepository;
  final FetchLocalStorageUseCase _fetchLocalStorageUseCase;

  DefaultSaveLocalStorageUseCase(
      {SaveLocalStorageRepository? saveLocalStorageRepository,
      FetchLocalStorageUseCase? fetchLocalStorageUseCase})
      : _saveLocalStorageRepository =
            saveLocalStorageRepository ?? DefaultSaveLocalStorageRepository(),
        _fetchLocalStorageUseCase =
            fetchLocalStorageUseCase ?? DefaultFetchLocalStorageUseCase();

  @override
  Future<void> execute({required SaveLocalStorageParameters parameters}) async {
    _saveLocalStorageRepository.saveInLocalStorage(
        key: parameters.key, value: parameters.value);
  }

  @override
  Future<void> clearRecentSearchInLocalStorage() {
    return _saveLocalStorageRepository.saveRecentSearchInLocalStorage(
        key: LocalStorageKeys.recentSearches, value: []);
  }

  @override
  Future<void> saveRecentSearchInLocalStorage(
      {required String containerId}) async {
    final containerIds = await _fetchLocalStorageUseCase.fetchRecentSearches();
    if (!containerIds.contains(containerId)) {
      containerIds.add(containerId);
      return _saveLocalStorageRepository.saveRecentSearchInLocalStorage(
          key: LocalStorageKeys.recentSearches, value: containerIds);
    }
  }
}
