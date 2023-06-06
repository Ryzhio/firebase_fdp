import 'package:firebase_fdp/src/features/presentation/widgets/container_page/containerpage_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/containerspage/containerspage_entity.dart';

class ContainerPageView extends StatelessWidget {
  //DEPENDENCIAS
  List<ContainersPageDetailEntity> containerspage = [];

  ContainerPageView({super.key, required this.containerspage});

  @override
  Widget build(BuildContext context) {
    return containerspage.isEmpty
        ? Container(
            height: 20,
          )
        : Column(
            children: [
              ContainerPageCardWidget(
                containerspage: containerspage,
              ),
            ],
          );
  }
}
