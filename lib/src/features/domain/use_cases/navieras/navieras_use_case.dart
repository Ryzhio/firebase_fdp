import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/navieras/navieras_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/navieras/navieras_entity.dart';

abstract class FetchNavierasUseCase {
  Future<NavierasEntity> execute();
}

class DefaultFetchNavierasUseCase extends FetchNavierasUseCase {
  // * Dependencias
  final NavierasRepository _navierasRepository;

  DefaultFetchNavierasUseCase({NavierasRepository? navierasRepository})
      : _navierasRepository = navierasRepository ?? DefaultNavierasRepository();

  @override
  Future<NavierasEntity> execute() async {
    final decodable = await _navierasRepository.fetchNavieras();
    return NavierasEntity.fromMap(decodable.toMap());
  }
}
