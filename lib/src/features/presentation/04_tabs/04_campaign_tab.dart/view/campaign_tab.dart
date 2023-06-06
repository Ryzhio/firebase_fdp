import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/search/search_topbar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/04_tabs/04_campaign_tab.dart/campaings_tabs_viewmodel/general_tabs_viewmodel.dart';
import 'package:firebase_fdp/src/features/presentation/04_tabs/04_campaign_tab.dart/view/components/campaign_tab_contentview.dart';

class CampaingTab extends StatefulWidget {
  const CampaingTab({super.key});

  @override
  State<CampaingTab> createState() => _CampaingTabState();
}

class _CampaingTabState extends State<CampaingTab> with BaseView {
  final CampaignViewModel viewModel;

  _CampaingTabState({CampaignViewModel? campaignViewModel})
      : viewModel = campaignViewModel ?? DefaultGeneralViewModel();

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: headerText2(
                      'CAMPAÑAS',
                      Colors.white,
                      32,
                    ),
                  ),
                  // searchTopBar(context),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: viewModel.viewInitState(),
                builder: (BuildContext context,
                    AsyncSnapshot<CampaignViewModelState> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case CampaignViewModelState.viewLoadedState:
                          return CampaignTabContentView(viewModel: viewModel);
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
