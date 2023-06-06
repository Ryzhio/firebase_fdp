import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/04_tabs/04_campaign_tab.dart/view/components/campaign_contentview.dart';
import 'package:firebase_fdp/src/features/presentation/04_tabs/04_campaign_tab.dart/campaings_tabs_viewmodel/general_tabs_viewmodel.dart';

class CampaignTabContentView extends StatelessWidget {
  final CampaignViewModel viewModel;

  const CampaignTabContentView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CampaignsContentView(campaigns: viewModel.campaigns),
    );
  }
}
