import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/domain/entities/clientes/clientes_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_cliente_list.dart';
import 'package:flutter/material.dart';

class ClientesCardWidget extends StatelessWidget {
  //DEPENDENCIAS
  List<ClientesDetailEntity> clientes = [];

  ClientesCardWidget({super.key, required this.clientes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 800,
          child: ListView.builder(
            itemCount: clientes.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return ClientesCard(
                clientes: clientes[index],
              );
            },
          ),
        )
      ],
    );
  }
}

//* Widget

class ClientesCard extends StatelessWidget with BaseView {
  //Dependencias
  ClientesDetailEntity clientes;

  ClientesCard({super.key, required this.clientes});

  @override
  Widget build(BuildContext context) {
    return containerClientList(
      context: context,
      titleClient1: clientes.cliente,
      titleCant1: clientes.cant,
      funcOP: () {
        coordinator.showClien(context: context, clientes: clientes);
      },
    );
  }
}
