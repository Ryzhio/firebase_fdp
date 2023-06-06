import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/13_detail_cliente/view/components/clien_components_view.dart';
import 'package:firebase_fdp/src/features/presentation/13_detail_cliente/view_models/clien_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';

class DetailCliente extends StatelessWidget with BaseView {
  final ClienViewModel viewModel;

  DetailCliente({super.key, required ClienViewModel clienViewModel})
      : viewModel = clienViewModel;

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
                    AsyncSnapshot<ClienViewState> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case ClienViewState.viewLoadedState:
                          return ClienComponentsView(
                            clientes: viewModel.getClientes(),
                            filteredClienByCategory:
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
