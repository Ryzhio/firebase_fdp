import 'package:firebase_fdp/src/features/domain/entities/navi/navi_entity.dart';
import 'package:firebase_fdp/src/features/domain/entities/navieras/navieras_entity.dart';
import 'package:firebase_fdp/src/features/presentation/17_detail_ln_page/view/components/navi_view.dart';
import 'package:firebase_fdp/src/features/presentation/17_detail_ln_page/view_model/navi_view_model.dart';
import 'package:flutter/material.dart';

class NaviComponentsView extends StatelessWidget {
  NavierasDetailEntity navieras;
  List<NaviListDetailEntity> filteredNaviByCategory;

  NaviComponentsView({
    super.key,
    required this.navieras,
    required this.filteredNaviByCategory,
    required NaviViewModel viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NaviView(naviListDetailEntity: filteredNaviByCategory.first),
        ],
      ),
    );
  }
}
