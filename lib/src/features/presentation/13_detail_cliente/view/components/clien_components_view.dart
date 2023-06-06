import 'package:firebase_fdp/src/features/presentation/13_detail_cliente/view/components/clien_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/clien/clien_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/clientes/clientes_entity.dart';
import 'package:firebase_fdp/src/features/presentation/13_detail_cliente/view_models/clien_view_model.dart';

class ClienComponentsView extends StatelessWidget {
  ClientesDetailEntity clientes;
  List<ClienListDetailEntity> filteredClienByCategory;

  ClienComponentsView({
    super.key,
    required this.clientes,
    required this.filteredClienByCategory,
    required ClienViewModel viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClienView(clienListDetailEntity: filteredClienByCategory.first),
        ],
      ),
    );
  }
}
