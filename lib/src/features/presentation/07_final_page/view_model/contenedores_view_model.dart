import 'package:firebase_fdp/src/features/domain/entities/contenedores/contenedores_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/contenedores/contenedores_use_case.dart';

enum ContenedoresViewModelState {
  viewLoadedState,
  errorState,
}

abstract class ContenedoresViewModelInput {
  Future<ContenedoresViewModelState> viewInitState();
  List<ContenedoresDetailEntity> contenedores = [];
}

abstract class ContenedoresViewModel extends ContenedoresViewModelInput {}

class DefaultContenedoresViewModel extends ContenedoresViewModel {
  //DEPENDENCIAS
  final FetchContenedoresUseCase _fetchContenedoresUseCase;

  DefaultContenedoresViewModel(
      {FetchContenedoresUseCase? fetchContenedoresUseCase})
      : _fetchContenedoresUseCase =
            fetchContenedoresUseCase ?? DefaultFetchContenedoresUseCase();

  @override
  Future<ContenedoresViewModelState> viewInitState() async {
    final contenedoresResponse = await _fetchContenedoresUseCase.execute();
    contenedores = contenedoresResponse.contenedores ?? [];

    if (contenedores.isNotEmpty) {
      return ContenedoresViewModelState.viewLoadedState;
    } else {
      return ContenedoresViewModelState.errorState;
    }
  }
}
