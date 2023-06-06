import 'package:firebase_fdp/src/features/domain/entities/containerpagecountry/containerpagecountry_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/containerpagecountry/containerpagecountry_use_case.dart';

enum ContainerPageCountryViewModelState {
  viewLoadedState,
  errorState,
}

abstract class ContainerPageCountryViewModelInput {
  Future<ContainerPageCountryViewModelState> viewInitState();
  List<ContainersPageCountryDetailEntity> containerspagecountry = [];
}

abstract class ContainerPageCountryViewModel
    extends ContainerPageCountryViewModelInput {}

class DefaultContainerPageCountryViewModel
    extends ContainerPageCountryViewModel {
  //DEPENDENCIAS
  final FetchContainerPageCountryUseCase _fetchContainerPageCountryUseCase;

  DefaultContainerPageCountryViewModel(
      {FetchContainerPageCountryUseCase? fetchContainerPageCountryUseCase})
      : _fetchContainerPageCountryUseCase = fetchContainerPageCountryUseCase ??
            DefaultFetchContainerPageCountryUseCase();

  @override
  Future<ContainerPageCountryViewModelState> viewInitState() async {
    final containersPageCountryResponse =
        await _fetchContainerPageCountryUseCase.execute();
    containerspagecountry =
        containersPageCountryResponse.containerspagecountry ?? [];

    if (containerspagecountry.isNotEmpty) {
      return ContainerPageCountryViewModelState.viewLoadedState;
    } else {
      return ContainerPageCountryViewModelState.errorState;
    }
  }
}
