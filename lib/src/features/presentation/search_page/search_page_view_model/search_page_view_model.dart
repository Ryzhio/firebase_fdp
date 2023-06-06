import 'package:firebase_fdp/src/features/domain/entities/contenedores/contenedores_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/contenedores/contenedores_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/fetch_local_storage_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/local_storage/save_local_storage_use_case.dart';

abstract class SearchPageViewModelInput {
  Future<ContenedoresEntity> fetchContenedoresByQuery({required String query});
  Future<ContenedoresEntity> fetchContenedoresByRecentSearches();
  Future<ContenedoresEntity> fetchPopularContenedores();
  Future<void> clearRecentSearchInLocalStorage();
}

abstract class SearchPageViewModel extends SearchPageViewModelInput {}

class DefaultSearchPageViewModel extends SearchPageViewModel {
  // DEPENDENCIAS
  final FetchContenedoresUseCase _contenedoresUseCase;
  final FetchLocalStorageUseCase _fetchLocalStorageUseCase;
  final SaveLocalStorageUseCase _saveLocalStorageUseCase;

  DefaultSearchPageViewModel(
      {FetchContenedoresUseCase? contenedoresUseCase,
      FetchLocalStorageUseCase? fetchLocalStorageUseCase,
      SaveLocalStorageUseCase? saveLocalStorageUseCase})
      : _contenedoresUseCase =
            contenedoresUseCase ?? DefaultFetchContenedoresUseCase(),
        _fetchLocalStorageUseCase =
            fetchLocalStorageUseCase ?? DefaultFetchLocalStorageUseCase(),
        _saveLocalStorageUseCase =
            saveLocalStorageUseCase ?? DefaultSaveLocalStorageUseCase();

  @override
  Future<void> clearRecentSearchInLocalStorage() {
    return _saveLocalStorageUseCase.clearRecentSearchInLocalStorage();
  }

  @override
  Future<ContenedoresEntity> fetchContenedoresByQuery({required String query}) {
    // TODO: implement fetchContenedoresByQuery
    throw UnimplementedError();
  }

  @override
  Future<ContenedoresEntity> fetchContenedoresByRecentSearches() {
    // TODO: implement fetchContenedoresByRecentSearches
    throw UnimplementedError();
  }

  @override
  Future<ContenedoresEntity> fetchPopularContenedores() {
    // TODO: implement fetchPopularContenedores
    throw UnimplementedError();
  }
}
