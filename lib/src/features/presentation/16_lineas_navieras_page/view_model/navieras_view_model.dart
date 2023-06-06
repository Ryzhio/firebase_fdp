import 'package:firebase_fdp/src/features/domain/entities/navieras/navieras_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/navieras/navieras_use_case.dart';

enum NavierasViewModelState {
  viewLoadedState,
  errorState,
}

abstract class NavierasViewModelInput {
  Future<NavierasViewModelState> viewInitState();
  List<NavierasDetailEntity> navieras = [];
}

abstract class NavierasViewModel extends NavierasViewModelInput {}

class DefaultNavierasViewModel extends NavierasViewModel {
  //DEPENDENCIAS
  final FetchNavierasUseCase _fetchNavierasUseCase;

  DefaultNavierasViewModel({FetchNavierasUseCase? fetchNavierasUseCase})
      : _fetchNavierasUseCase =
            fetchNavierasUseCase ?? DefaultFetchNavierasUseCase();

  @override
  Future<NavierasViewModelState> viewInitState() async {
    final navierasResponse = await _fetchNavierasUseCase.execute();
    navieras = navierasResponse.navieras ?? [];

    if (navieras.isNotEmpty) {
      return NavierasViewModelState.viewLoadedState;
    } else {
      return NavierasViewModelState.errorState;
    }
  }
}
