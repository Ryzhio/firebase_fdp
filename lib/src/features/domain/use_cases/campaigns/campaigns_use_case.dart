import 'package:firebase_fdp/src/features/data/interfaces/interfaces.dart';
import 'package:firebase_fdp/src/features/data/repositorys/campaigns/campaigns_repository.dart';
import 'package:firebase_fdp/src/features/domain/entities/campaigns/campaigns_entity.dart';

abstract class FetchCampaignsUseCase {
  Future<CampaignsEntity> execute();
}

class DefaultFetchCampaignsUseCase extends FetchCampaignsUseCase {
  // * Dependencias
  final CampaignsRepository _campaignsRepository;

  DefaultFetchCampaignsUseCase({CampaignsRepository? campaignsRepository})
      : _campaignsRepository =
            campaignsRepository ?? DefaultCampaignsRepository();

  @override
  Future<CampaignsEntity> execute() async {
    final decodable = await _campaignsRepository.fetchCampaigns();
    return CampaignsEntity.fromMap(decodable.toMap());
  }
}
