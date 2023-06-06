import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/domain/entities/conte/conte_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/containercountry_card/containercountry_card.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/containerpagecountry/containerpagecountry_entity.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerPageCountryDetailView extends StatelessWidget with BaseView {
  //DEPENDENCIAS
  List<ContainersPageCountryDetailEntity> containerspagecountry = [];
  List<ConteListDetailEntity> conteList = [];

  ContainerPageCountryDetailView(
      {super.key, required this.containerspagecountry});

  @override
  Widget build(BuildContext context) {
    return containerspagecountry.isEmpty
        ? Container(height: 20)
        : Column(
            children: [
              GestureDetector(
                onTap: () => coordinator.showConteListView(
                    context: context, conteList: conteList),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Show all containers",
                        style: GoogleFonts.ultra(color: Colors.white),
                      ),
                      const Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              ContainerPageCountryCardWidget(
                  containerspagecountry: containerspagecountry)
            ],
          );
  }
}
