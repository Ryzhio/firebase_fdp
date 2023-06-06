import 'package:firebase_fdp/src/features/presentation/10_containers_page/view/components/containerpage_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/10_containers_page/view_model/containerpage_view_model.dart';

class ContainersPageContentView extends StatelessWidget {
  //Dependencias
  final ContainerPageViewModel viewModel;

  const ContainersPageContentView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ContainerPageView(
            containerspage: viewModel.containerspage,
          )
        ],
      ),
    );
  }
}
