import 'package:firebase_fdp/src/features/domain/entities/contenedores/contenedores_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_contenedores.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContenedoresCardWidget extends StatelessWidget {
  //DEPENDENCIAS
  List<ContenedoresDetailEntity> contenedores = [];

  ContenedoresCardWidget({super.key, required this.contenedores});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 800,
          child:
              // ListView.builder(
              //   itemCount: contenedores.length,
              //   // scrollDirection: Axis.vertical,
              //   itemBuilder: (_,
              //       // BuildContext context,
              //       // int
              //       index) {
              //     return
              //     ListTile(
              //       title: Text(contenedores[index].contenedores),
              //     );
              //   },
              // ),
              ListView.builder(
            itemCount: contenedores.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return ContenedoresCard(
                contenedores: contenedores[index],
              );
            },
          ),
        )
      ],
    );
  }
}

//* WIDGET

class ContenedoresCard extends StatelessWidget {
  //Dependencias
  ContenedoresDetailEntity contenedores;

  ContenedoresCard({super.key, required this.contenedores});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'N° CONTENEDOR',
                  style: GoogleFonts.ultra(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              containerContenedores(
                context: context,
                c1: contenedores.contenedores,
              )
            ],
          ),
        ],
      ),
    );
  }
}
