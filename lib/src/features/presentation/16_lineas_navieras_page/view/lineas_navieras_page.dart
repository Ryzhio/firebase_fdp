import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/16_lineas_navieras_page/view/components/navieras_components_view.dart';
import 'package:firebase_fdp/src/features/presentation/16_lineas_navieras_page/view_model/navieras_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LineasNavierasPage extends StatefulWidget {
  const LineasNavierasPage({super.key});

  @override
  State<LineasNavierasPage> createState() => _LineasNavierasPageState();
}

class _LineasNavierasPageState extends State<LineasNavierasPage> with BaseView {
  final NavierasViewModel viewModel;

  _LineasNavierasPageState({NavierasViewModel? navierasViewModel})
      : viewModel = navierasViewModel ?? DefaultNavierasViewModel();

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
                          'LINEAS NAVIERAS',
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
                    AsyncSnapshot<NavierasViewModelState> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case NavierasViewModelState.viewLoadedState:
                          return NavierasComponentsView(
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
