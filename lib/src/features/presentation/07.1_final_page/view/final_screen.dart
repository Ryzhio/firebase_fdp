import 'package:firebase_fdp/src/features/domain/entities/conte/conte_entity.dart';
import 'package:firebase_fdp/src/features/presentation/07.1_final_page/view/final_list_screen.dart';
import 'package:firebase_fdp/src/features/presentation/delegates/search_contenedor_delagate.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalScreen extends StatelessWidget {
  List<ConteListDetailEntity> conteList = [];

  FinalScreen({super.key, required this.conteList});

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
                  child: _searchInput(context),
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
            CustomScrollView(
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  FinalListCarrousel(
                    // carrouselStyle: FinalListCarrouselStyle.list,
                    // isShortedVisualization: false,
                    conteList: conteList,
                  )
                ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "SEARCH N° CONTENEDOR",
            style: GoogleFonts.ultra(),
          ),
          // IconButton(
          //   onPressed: () {
          //     showSearch(
          //       context: context,
          //       delegate: SearchContenDelegate(),
          //     );
          //   },
          //   color: Colors.black54,
          //   icon: const Icon(
          //     Icons.search,
          //     size: 30,
          //   ),
          // ),
        ],
      ));
}
