import 'package:firebase_fdp/src/features/presentation/widgets/campaign_card/campaign_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/campaigns/campaigns_entity.dart';

class CampaignsContentView extends StatelessWidget {
  //Dependencias
  List<CampaignDetailEntity> campaigns = [];

  CampaignsContentView({super.key, required this.campaigns});

  @override
  Widget build(BuildContext context) {
    return campaigns.isEmpty
        ? Container(
            height: 20,
          )
        : Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CampaignCardWidget(campaigns: campaigns),
              const SizedBox(
                height: 10,
              ),
            ],
          );
  }
}
