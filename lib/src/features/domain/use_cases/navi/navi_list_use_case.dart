import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/navi/navi_list_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/navi/navi_entity.dart';

abstract class NaviListUseCase {
  Future<NaviListEntity> fetchPopularNaviList();
  Future<NaviListEntity> fetchNaviList();
  Future<NaviListEntity> fetchNaviListByCategory({required int categoId});
}

class DefaultNaviListUseCase extends NaviListUseCase {
  //DEPENDENCIAS
  final NaviListRepository _naviListRepository;

  DefaultNaviListUseCase({NaviListRepository? naviListRepository})
      : _naviListRepository = naviListRepository ?? DefaultNaviListRepository();

  @override
  Future<NaviListEntity> fetchPopularNaviList() async {
    final naviListDecodable = await _naviListRepository.fetchPopularNaviList();
    return NaviListEntity.fromMap(naviListDecodable.toMap());
  }

  @override
  Future<NaviListEntity> fetchNaviList() async {
    final naviListDecodable = await _naviListRepository.fetchNaviList();
    return NaviListEntity.fromMap(naviListDecodable.toMap());
  }

  @override
  Future<NaviListEntity> fetchNaviListByCategory(
      {required int categoId}) async {
    final naviListDecodable =
        await _naviListRepository.fetchNaviListByCategory(categoId: categoId);
    return NaviListEntity.fromMap(naviListDecodable.toMap());
  }
}
