import 'package:firebase_fdp/src/features/domain/entities/conte/conte_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_contenedores.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalListCardView extends StatelessWidget {
  //Dependencias
  // final bool hasFreeDelivery;
  final ConteListDetailEntity conteListDetailEntity;

  FinalListCardView({
    super.key,
    // required this.hasFreeDelivery,
    required this.conteListDetailEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          padding:
              const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
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
                    c1: conteListDetailEntity.contenedores,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
