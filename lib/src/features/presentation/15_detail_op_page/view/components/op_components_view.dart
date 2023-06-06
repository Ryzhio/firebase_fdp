import 'package:firebase_fdp/src/features/domain/entities/logisticos/logisticos_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/op/op_entity.dart';
import 'package:firebase_fdp/src/features/presentation/15_detail_op_page/view/components/op_view.dart';
import 'package:firebase_fdp/src/features/presentation/15_detail_op_page/view_model/op_view_model.dart';
import 'package:flutter/material.dart';

class OpComponentsView extends StatelessWidget {
  LogisticosDetailEntity logisticos;
  List<OpListDetailEntity> filteredOpByCategory;

  OpComponentsView({
    super.key,
    required this.logisticos,
    required this.filteredOpByCategory,
    required OpViewModel viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            OpView(opListDetailEntity: filteredOpByCategory.first),
          ],
        ),
      ),
    );
  }
}
