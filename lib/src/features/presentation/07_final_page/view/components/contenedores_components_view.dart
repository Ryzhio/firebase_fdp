import 'package:firebase_fdp/src/features/presentation/07_final_page/view/components/contenedores_view.dart';
import 'package:firebase_fdp/src/features/presentation/07_final_page/view_model/contenedores_view_model.dart';
import 'package:flutter/material.dart';

class ContenedoresComponentsView extends StatelessWidget {
  //Dependencias
  final ContenedoresViewModel viewModel;

  const ContenedoresComponentsView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              ContenedoresView(
                contenedores: viewModel.contenedores,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
