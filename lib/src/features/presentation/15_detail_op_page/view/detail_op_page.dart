import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/15_detail_op_page/view/components/op_components_view.dart';
import 'package:firebase_fdp/src/features/presentation/15_detail_op_page/view_model/op_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';

class DetailOPPage extends StatelessWidget with BaseView {
  final OpViewModel viewModel;

  DetailOPPage({super.key, required OpViewModel opViewModel})
      : viewModel = opViewModel;

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
                    AsyncSnapshot<OpViewState> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case OpViewState.viewLoadedState:
                          return OpComponentsView(
                            logisticos: viewModel.getLogisticos(),
                            filteredOpByCategory:
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
