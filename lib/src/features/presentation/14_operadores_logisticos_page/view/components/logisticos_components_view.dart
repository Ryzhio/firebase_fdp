import 'package:firebase_fdp/src/features/presentation/14_operadores_logisticos_page/view/components/logisticos_view.dart';
import 'package:firebase_fdp/src/features/presentation/14_operadores_logisticos_page/view_model/logisticos_view__model.dart';
import 'package:flutter/material.dart';

class LogisticosComponentsView extends StatelessWidget {
  //Dependencias
  final LogisticosViewModel viewModel;

  const LogisticosComponentsView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              LogisticosView(
                logisticos: viewModel.logisticos,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
