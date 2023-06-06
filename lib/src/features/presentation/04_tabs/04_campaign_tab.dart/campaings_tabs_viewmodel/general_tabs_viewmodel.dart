import 'package:firebase_fdp/src/features/domain/entities/campaigns/campaigns_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/containers/container_list_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/campaigns/campaigns_use_case.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/containers/container_list/container_list_use_case.dart';

enum CampaignViewModelState {
  viewLoadedState,
  errorState,
}

abstract class CampaignViewModelInput {
  Future<CampaignViewModelState> viewInitState();
  List<ContainerListDetailEntity> popularContainer = [];
  List<CampaignDetailEntity> campaigns = [];
}

abstract class CampaignViewModel extends CampaignViewModelInput {}

class DefaultGeneralViewModel extends CampaignViewModel {
  //Dependencias
  final ContainerListUseCase _containerListUseCase;
  final FetchCampaignsUseCase _fetchCampaignsUseCase;

  DefaultGeneralViewModel(
      {FetchCampaignsUseCase? fetchCampaignsUseCase,
      ContainerListUseCase? containerListUseCase})
      : _fetchCampaignsUseCase =
            fetchCampaignsUseCase ?? DefaultFetchCampaignsUseCase(),
        _containerListUseCase =
            containerListUseCase ?? DefaultContainerListUseCase();

  @override
  Future<CampaignViewModelState> viewInitState() async {
    final popularContainerResult =
        await _containerListUseCase.fetchPopularContainerList();
    popularContainer = popularContainerResult.containerList ?? [];

    final campaignsResponse = await _fetchCampaignsUseCase.execute();
    campaigns = campaignsResponse.campaigns ?? [];

    if (campaigns.isNotEmpty || popularContainer.isNotEmpty) {
      return CampaignViewModelState.viewLoadedState;
    } else {
      return CampaignViewModelState.errorState;
    }
  }
}
