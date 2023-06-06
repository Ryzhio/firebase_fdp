import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/06_campaign_sub/view/components/campaign_sub_content_view.dart';
import 'package:firebase_fdp/src/features/presentation/06_campaign_sub/viewModel/campaign_sub_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';

class CampaignSub extends StatelessWidget with BaseView {
  final CampaignSubViewModel viewModel;

  CampaignSub({required CampaignSubViewModel campaignSubViewModel})
      : viewModel = campaignSubViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                backButton(context, Colors.white60, 25),
              ],
            ),
            Expanded(
              child: FutureBuilder(
                future: viewModel.viewInitState(),
                builder: (BuildContext context,
                    AsyncSnapshot<CampaignSubViewState> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case CampaignSubViewState.viewLoadedState:
                          return CampaignSubContentView(
                            campaign: viewModel.getCampaign(),
                            filteredContainerByCategory:
                                viewModel.filteredContainerByCategory,
                            viewModel: viewModel,
                          );
                        default:
                          return ErrorView();
                      }
                    default:
                      return loadingView;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
