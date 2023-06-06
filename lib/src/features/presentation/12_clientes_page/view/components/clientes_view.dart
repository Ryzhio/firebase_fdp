import 'package:firebase_fdp/src/features/domain/entities/clientes/clientes_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/clientes_card/clientes_card_widget.dart';
import 'package:flutter/material.dart';

class ClientesView extends StatelessWidget {
  //DEPENDENCIAS
  List<ClientesDetailEntity> clientes = [];

  ClientesView({super.key, required this.clientes});

  @override
  Widget build(BuildContext context) {
    return clientes.isEmpty
        ? Container(
            height: 20,
          )
        : Column(
            children: [
              ClientesCardWidget(clientes: clientes),
            ],
          );
  }
}
