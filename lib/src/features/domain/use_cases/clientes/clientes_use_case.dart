import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/clientes/clientes_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/clientes/clientes_entity.dart';

abstract class FetchClientesUseCase {
  Future<ClientesEntity> execute();
}

class DefaultFetchClientesUseCase extends FetchClientesUseCase {
  // * Dependencias
  final ClientesRepository _clientesRepository;

  DefaultFetchClientesUseCase({ClientesRepository? clientesRepository})
      : _clientesRepository = clientesRepository ?? DefaultClientesRepository();

  @override
  Future<ClientesEntity> execute() async {
    final decodable = await _clientesRepository.fetchClientes();
    return ClientesEntity.fromMap(decodable.toMap());
  }
}
