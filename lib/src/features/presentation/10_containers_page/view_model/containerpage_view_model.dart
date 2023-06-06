import 'package:firebase_fdp/src/features/domain/entities/containerspage/containerspage_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/containerspage/containerspage_use_case.dart';

enum ContainerPageViewModelState { viewLoadedState, errorState }

abstract class ContainerPageViewModelInput {
  Future<ContainerPageViewModelState> viewInitState();
  List<ContainersPageDetailEntity> containerspage = [];
}

abstract class ContainerPageViewModel extends ContainerPageViewModelInput {}

class DefaultContainerPageViewModel extends ContainerPageViewModel {
  //DEPENDENCIAS
  final FetchContainerPageUseCase _fetchContainerPageUseCase;

  DefaultContainerPageViewModel(
      {FetchContainerPageUseCase? fetchContainerPageUseCase})
      : _fetchContainerPageUseCase =
            fetchContainerPageUseCase ?? DefaultFetchContainerPageUseCase();

  @override
  Future<ContainerPageViewModelState> viewInitState() async {
    final containersPageResponse = await _fetchContainerPageUseCase.execute();
    containerspage = containersPageResponse.containerspage ?? [];

    if (containerspage.isNotEmpty) {
      return ContainerPageViewModelState.viewLoadedState;
    } else {
      return ContainerPageViewModelState.errorState;
    }
  }
}
