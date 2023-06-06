import 'package:firebase_fdp/src/features/presentation/12_clientes_page/view/components/clientes_view.dart';
import 'package:firebase_fdp/src/features/presentation/12_clientes_page/view_model/clientes_view_model.dart';
import 'package:flutter/material.dart';

class ClientesComponentsView extends StatelessWidget {
  //Dependencias
  final ClientesViewModel viewModel;

  const ClientesComponentsView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              ClientesView(
                clientes: viewModel.clientes,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
