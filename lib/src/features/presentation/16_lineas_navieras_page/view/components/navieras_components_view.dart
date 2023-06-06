import 'package:firebase_fdp/src/features/presentation/16_lineas_navieras_page/view/components/navieras_view.dart';
import 'package:firebase_fdp/src/features/presentation/16_lineas_navieras_page/view_model/navieras_view_model.dart';
import 'package:flutter/material.dart';

class NavierasComponentsView extends StatelessWidget {
  //Dependencias
  final NavierasViewModel viewModel;

  const NavierasComponentsView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              NavierasView(
                navieras: viewModel.navieras,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
