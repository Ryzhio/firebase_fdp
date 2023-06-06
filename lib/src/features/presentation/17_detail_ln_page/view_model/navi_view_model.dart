import 'package:firebase_fdp/src/features/domain/entities/navi/navi_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/navieras/navieras_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/navi/navi_list_use_case.dart';

enum NaviViewState {
  viewLoadedState,
  errorState,
}

abstract class NaviViewModelInput {
  Future<NaviViewState> viewInitState();
  NavierasDetailEntity getNavieras();
  List<NaviListDetailEntity> filteredContainerByCategory = [];
}

abstract class NaviViewModel extends NaviViewModelInput {}

class DefaultNaviViewModel extends NaviViewModel {
  //Dependencias
  NavierasDetailEntity navieras;
  final NaviListUseCase _naviListUseCase;

  DefaultNaviViewModel(
      {required this.navieras, NaviListUseCase? naviListUseCase})
      : _naviListUseCase = naviListUseCase ?? DefaultNaviListUseCase();

  @override
  Future<NaviViewState> viewInitState() async {
    final naviResult =
        await _naviListUseCase.fetchNaviListByCategory(categoId: navieras.id);
    filteredContainerByCategory = naviResult.naviList ?? [];
    return NaviViewState.viewLoadedState;
  }

  @override
  NavierasDetailEntity getNavieras() {
    return navieras;
  }
}
