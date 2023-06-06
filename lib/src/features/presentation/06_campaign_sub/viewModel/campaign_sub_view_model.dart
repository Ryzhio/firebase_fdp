import 'package:firebase_fdp/src/features/domain/entities/campaigns/campaigns_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/containers/container_list_entity.dart';
import 'package:firebase_fdp/src/features/domain/use_cases/containers/container_list/container_list_use_case.dart';

enum CampaignSubViewState {
  viewLoadedState,
  errorState,
}

abstract class CampaignSubViewModelInput {
  Future<CampaignSubViewState> viewInitState();
  CampaignDetailEntity getCampaign();
  List<ContainerListDetailEntity> filteredContainerByCategory = [];
}

abstract class CampaignSubViewModel extends CampaignSubViewModelInput {}

class DefaultCampaignSubViewModel extends CampaignSubViewModel {
  //Dependencias
  CampaignDetailEntity campaign;
  final ContainerListUseCase _containerListUseCase;

  DefaultCampaignSubViewModel(
      {required this.campaign, ContainerListUseCase? containerListUseCase})
      : _containerListUseCase =
            containerListUseCase ?? DefaultContainerListUseCase();

  @override
  Future<CampaignSubViewState> viewInitState() async {
    final containerResult = await _containerListUseCase
        .fetchContainerListByCategory(categoryId: campaign.id);
    filteredContainerByCategory = containerResult.containerList ?? [];
    return CampaignSubViewState.viewLoadedState;
  }

  @override
  CampaignDetailEntity getCampaign() {
    return campaign;
  }
}
