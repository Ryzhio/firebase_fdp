import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/14_operadores_logisticos_page/view/components/logisticos_components_view.dart';
import 'package:firebase_fdp/src/features/presentation/14_operadores_logisticos_page/view_model/logisticos_view__model.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class OperadoresLogisticosPage extends StatefulWidget {
  const OperadoresLogisticosPage({super.key});

  @override
  State<OperadoresLogisticosPage> createState() =>
      _OperadoresLogisticosPageState();
}

class _OperadoresLogisticosPageState extends State<OperadoresLogisticosPage>
    with BaseView {
  final LogisticosViewModel viewModel;

  _OperadoresLogisticosPageState({LogisticosViewModel? logisticosViewModel})
      : viewModel = logisticosViewModel ?? DefaultLogisticosViewModel();

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
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 230,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                      color: const Color.fromRGBO(189, 250, 227, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'DETALLE OP',
                          style: GoogleFonts.ultra(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: viewModel.viewInitState(),
                builder: (BuildContext context,
                    AsyncSnapshot<LogisticosViewModelState> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case LogisticosViewModelState.viewLoadedState:
                          return LogisticosComponentsView(
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
