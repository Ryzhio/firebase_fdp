import 'package:firebase_fdp/src/features/domain/entities/contenedores/contenedores_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/contenedores_card/contenedores_card_widget.dart';
import 'package:flutter/material.dart';

class ContenedoresView extends StatelessWidget {
  //DEPENDENCIAS
  List<ContenedoresDetailEntity> contenedores = [];

  ContenedoresView({super.key, required this.contenedores});

  @override
  Widget build(BuildContext context) {
    return contenedores.isEmpty
        ? Container(
            height: 20,
          )
        : Column(
            children: [
              ContenedoresCardWidget(contenedores: contenedores),
            ],
          );
  }
}
