import 'package:firebase_fdp/src/features/domain/entities/campaigns/campaigns_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/containers/container_list_entity.dart';
import 'package:firebase_fdp/src/features/presentation/06_campaign_sub/viewModel/campaign_sub_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container_detail/container_detail.dart';
import 'package:flutter/material.dart';

class CampaignSubContentView extends StatelessWidget {
  CampaignDetailEntity campaign;
  List<ContainerListDetailEntity> filteredContainerByCategory;

  CampaignSubContentView(
      {super.key,
      required this.campaign,
      required this.filteredContainerByCategory,
      required CampaignSubViewModel viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            ContainerListCardView(
                containerListDetailEntity: filteredContainerByCategory.first)
          ],
        ),
      ),
    );
  }
}
