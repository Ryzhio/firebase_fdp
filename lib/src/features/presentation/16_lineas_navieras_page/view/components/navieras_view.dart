import 'package:firebase_fdp/src/features/domain/entities/navieras/navieras_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/navieras_card/navieras_card_widget.dart';
import 'package:flutter/material.dart';

class NavierasView extends StatelessWidget {
  //DEPENDENCIAS
  List<NavierasDetailEntity> navieras = [];

  NavierasView({super.key, required this.navieras});

  @override
  Widget build(BuildContext context) {
    return navieras.isEmpty
        ? Container(
            height: 20,
          )
        : Column(
            children: [
              NavierasCardWidget(navieras: navieras),
            ],
          );
  }
}
