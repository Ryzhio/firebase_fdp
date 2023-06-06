import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/contenedores/contenedores_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/contenedores_card/contenedores_card_widget.dart';

class SearchContenDelegate extends SearchDelegate {
  //DEPENDENCIAS
  List<ContenedoresDetailEntity> contene = [];

  List<ContenedoresDetailEntity> _filter = [];

  SearchContenDelegate(this.contene);

  @override
  String get searchFieldLabel => "BUSCAR CONTENEDOR";

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SizedBox(
      height: 800,
      child: ListView.builder(
        itemCount: _filter.length,
        // scrollDirection: Axis.vertical,
        itemBuilder: (_,
            // BuildContext context,
            // int
            index) {
          return ListTile(
            title: Text(_filter[index].contenedores),
          );
        },
      ),
      //  ListView.builder(
      //   itemCount: contenedores.length,
      //   scrollDirection: Axis.vertical,
      //   itemBuilder: (BuildContext context, int index) {
      //     return ContenedoresCard(
      //       contenedores: contenedores[index],
      //     );
      //   },
      // ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _filter = contene.where((conte) {
      return conte.contenedores
          .toLowerCase()
          .contains(query.trim().toLowerCase());
    }).toList();
    return SizedBox(
      // height: 800,
      child:
          // ListView.builder(
          //   itemCount: _filter.length,
          //   // scrollDirection: Axis.vertical,
          //   itemBuilder: (_,
          //       // BuildContext context,
          //       // int
          //       index) {
          //     return ListTile(
          //       title: Text(_filter[index].contenedores),
          //     );
          //   },
          // ),
          ListView.builder(
        itemCount: _filter.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return ContenedoresCard(
            contenedores: _filter[index],
          );
        },
      ),
    );
  }
}
