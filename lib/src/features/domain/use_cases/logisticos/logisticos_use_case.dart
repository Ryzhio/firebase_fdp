import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/logisticos/logisticos_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/logisticos/logisticos_entity.dart';

abstract class FetchLogisticosUseCase {
  Future<LogisticosEntity> execute();
}

class DefaultFetchLogisticosUseCase extends FetchLogisticosUseCase {
  // * Dependencias
  final LogisticosRepository _logisticosRepository;

  DefaultFetchLogisticosUseCase({LogisticosRepository? logisticosRepository})
      : _logisticosRepository =
            logisticosRepository ?? DefaultLogisticosRepository();

  @override
  Future<LogisticosEntity> execute() async {
    final decodable = await _logisticosRepository.fetchLogisticos();
    return LogisticosEntity.fromMap(decodable.toMap());
  }
}
