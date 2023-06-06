import 'package:firebase_fdp/src/features/domain/entities/clien/clien_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/clientes/clientes_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/clien/clien_list_use_case.dart';

enum ClienViewState {
  viewLoadedState,
  errorState,
}

abstract class ClienViewModelInput {
  Future<ClienViewState> viewInitState();
  ClientesDetailEntity getClientes();
  List<ClienListDetailEntity> filteredContainerByCategory = [];
}

abstract class ClienViewModel extends ClienViewModelInput {}

class DefaultClienViewModel extends ClienViewModel {
  //Dependencias
  ClientesDetailEntity clientes;
  final ClienListUseCase _clienListUseCase;

  DefaultClienViewModel(
      {required this.clientes, ClienListUseCase? clienListUseCase})
      : _clienListUseCase = clienListUseCase ?? DefaultClienListUseCase();

  @override
  Future<ClienViewState> viewInitState() async {
    final clienResult =
        await _clienListUseCase.fetchClienListByCategory(categoId: clientes.id);
    filteredContainerByCategory = clienResult.clienList ?? [];
    return ClienViewState.viewLoadedState;
  }

  @override
  ClientesDetailEntity getClientes() {
    return clientes;
  }
}
