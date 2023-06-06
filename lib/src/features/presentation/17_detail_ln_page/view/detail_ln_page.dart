import 'package:firebase_fdp/src/features/presentation/17_detail_ln_page/view/components/navi_components_view.dart';
import 'package:firebase_fdp/src/features/presentation/17_detail_ln_page/view_model/navi_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';

class DetailLnPage extends StatelessWidget with BaseView {
  final NaviViewModel viewModel;

  DetailLnPage({super.key, required NaviViewModel naviViewModel})
      : viewModel = naviViewModel;

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
              children: [
                backButton(context, Colors.white60, 25),
              ],
            ),
            Expanded(
              child: FutureBuilder(
                future: viewModel.viewInitState(),
                builder: (BuildContext context,
                    AsyncSnapshot<NaviViewState> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case NaviViewState.viewLoadedState:
                          return NaviComponentsView(
                            navieras: viewModel.getNavieras(),
                            filteredNaviByCategory:
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
