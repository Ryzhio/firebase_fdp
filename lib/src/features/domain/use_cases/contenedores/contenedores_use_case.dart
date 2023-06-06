import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/contenedores/contenedores_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/contenedores/contenedores_entity.dart';

abstract class FetchContenedoresUseCase {
  Future<ContenedoresEntity> execute();
}

class DefaultFetchContenedoresUseCase extends FetchContenedoresUseCase {
  // * Dependencias
  final ContenedoresRepository _contenedoresRepository;

  DefaultFetchContenedoresUseCase(
      {ContenedoresRepository? contenedoresRepository})
      : _contenedoresRepository =
            contenedoresRepository ?? DefaultContenedoresRepository();

  @override
  Future<ContenedoresEntity> execute() async {
    final decodable = await _contenedoresRepository.fetchContenedores();
    return ContenedoresEntity.fromMap(decodable.toMap());
  }
}
