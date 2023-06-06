import 'package:firebase_fdp/src/features/domain/entities/contenedores/contenedores_entity.dart';
import 'package:firebase_fdp/src/features/presentation/delegates/search_contenedor_delagate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchInput extends StatelessWidget {
  List<ContenedoresDetailEntity> contenedores = [];

  SearchInput({super.key, required this.contenedores});

  @override
  Widget build(BuildContext context) {
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
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchContenDelegate(contenedores),
              );
            },
            color: Colors.black54,
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
