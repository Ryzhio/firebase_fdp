import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/11_container_detail/view/components/containerpagecountry_content_view.dart';
import 'package:firebase_fdp/src/features/presentation/11_container_detail/view_model/container_detail_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/error_view/error_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerDetail extends StatefulWidget {
  const ContainerDetail({super.key});

  @override
  State<ContainerDetail> createState() => _ContainerDetailState();
}

class _ContainerDetailState extends State<ContainerDetail> with BaseView {
  final ContainerPageCountryViewModel viewModel;

  _ContainerDetailState(
      {ContainerPageCountryViewModel? containerPageCountryViewModel})
      : viewModel = containerPageCountryViewModel ??
            DefaultContainerPageCountryViewModel();

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
              padding: const EdgeInsets.only(bottom: 20),
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
                          'DETALLE DEL DESTINO',
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
            Expanded(
              child: FutureBuilder(
                future: viewModel.viewInitState(),
                builder: (BuildContext context,
                    AsyncSnapshot<ContainerPageCountryViewModelState>
                        snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return loadingView;
                    case ConnectionState.done:
                      switch (snapshot.data) {
                        case ContainerPageCountryViewModelState.viewLoadedState:
                          return ContainerPageCountryContentView(
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
            )
          ],
        ),
      ),
    );
  }
}
