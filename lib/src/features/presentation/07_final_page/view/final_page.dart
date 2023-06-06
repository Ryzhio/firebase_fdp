import 'package:firebase_fdp/src/features/domain/entities/contenedores/contenedores_entity.dart';
import 'package:firebase_fdp/src/features/presentation/07_final_page/search_page/search_page.dart';
import 'package:firebase_fdp/src/features/presentation/07_final_page/view/components/contenedores_components_view.dart';
import 'package:firebase_fdp/src/features/presentation/delegates/search_contenedor_delagate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/07_final_page/view_model/contenedores_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({
    super.key,
  });

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> with BaseView {
  final ContenedoresViewModel viewModel;
  List<ContenedoresDetailEntity> contenedores = [];

  _FinalPageState({ContenedoresViewModel? contenedoresViewModel})
      : viewModel = contenedoresViewModel ?? DefaultContenedoresViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          children: [
            backButton(context, Colors.white60, 25),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
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
                          'CANT. DE CONTENEDORES',
                          style: GoogleFonts.ultra(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child:
                      // * SEARCH
                      //     Container(
                      //   margin: const EdgeInsets.only(top: 10),
                      //   padding: const EdgeInsets.only(
                      //       left: 5, right: 5, top: 5, bottom: 5),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white54,
                      //     borderRadius: BorderRadius.circular(5),
                      //     border: Border.all(color: Colors.white),
                      //   ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     children: [
                      //       Text(
                      //         "SEARCH N° CONTENEDOR",
                      //         style: GoogleFonts.ultra(),
                      //       ),
                      //       IconButton(
                      //         onPressed: () {
                      //           showSearch(
                      //             context: context,
                      //             delegate: SearchContenDelegate(contenedores),
                      //           );
                      //         },
                      //         color: Colors.black54,
                      //         icon: const Icon(
                      //           Icons.search,
                      //           size: 30,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      SearchInput(
                    contenedores: contenedores,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Divider(
                thickness: 2,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: viewModel.viewInitState(),
                builder: (BuildContext context,
                    AsyncSnapshot<ContenedoresViewModelState> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case ContenedoresViewModelState.viewLoadedState:
                          return ContenedoresComponentsView(
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
