import 'package:firebase_fdp/src/features/presentation/11_container_detail/view/components/containerdetail_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/11_container_detail/view_model/container_detail_view_model.dart';

class ContainerPageCountryContentView extends StatelessWidget {
  //Dependencias
  final ContainerPageCountryViewModel viewModel;

  const ContainerPageCountryContentView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              ContainerPageCountryDetailView(
                containerspagecountry: viewModel.containerspagecountry,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
