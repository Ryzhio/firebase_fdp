import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/domain/entities/campaigns/campaigns_entity.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';

class CampaignCardWidget extends StatelessWidget {
  //Dependencias
  List<CampaignDetailEntity> campaigns = [];

  CampaignCardWidget({super.key, required this.campaigns});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 800,
          child: ListView.builder(
            itemCount: campaigns.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return CampaignCard(
                campaign: campaigns[index],
              );
            },
          ),
        )
      ],
    );
  }
}

class CampaignCard extends StatelessWidget with BaseView {
  //Dependencias
  CampaignDetailEntity campaign;

  CampaignCard({super.key, required this.campaign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        coordinator.showCampaignSub(context: context, campaign: campaign);
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/mango-home.png'),
              fit: BoxFit.cover,
              opacity: 0.5,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                headerText2(
                  campaign.name,
                  Colors.white,
                  22,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
