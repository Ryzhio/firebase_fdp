import 'package:firebase_fdp/src/features/domain/entities/clientes/clientes_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/clientes/clientes_use_case.dart';

enum ClientesViewModelState {
  viewLoadedState,
  errorState,
}

abstract class ClientesViewModelInput {
  Future<ClientesViewModelState> viewInitState();
  List<ClientesDetailEntity> clientes = [];
}

abstract class ClientesViewModel extends ClientesViewModelInput {}

class DefaultClientesViewModel extends ClientesViewModel {
  //DEPENDENCIAS
  final FetchClientesUseCase _fetchClientesUseCase;

  DefaultClientesViewModel({FetchClientesUseCase? fetchClientesUseCase})
      : _fetchClientesUseCase =
            fetchClientesUseCase ?? DefaultFetchClientesUseCase();

  @override
  Future<ClientesViewModelState> viewInitState() async {
    final navierasResponse = await _fetchClientesUseCase.execute();
    clientes = navierasResponse.clientes ?? [];

    if (clientes.isNotEmpty) {
      return ClientesViewModelState.viewLoadedState;
    } else {
      return ClientesViewModelState.errorState;
    }
  }
}
