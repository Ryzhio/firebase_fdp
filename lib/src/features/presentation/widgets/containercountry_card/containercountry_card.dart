import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/containerpagecountry/containerpagecountry_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_destiny_country.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_detail_country.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerPageCountryCardWidget extends StatelessWidget {
  //DEPENDENCIAS
  List<ContainersPageCountryDetailEntity> containerspagecountry = [];

  ContainerPageCountryCardWidget(
      {super.key, required this.containerspagecountry});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 750,
          child: ListView.builder(
            itemCount: containerspagecountry.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return ContainerCountryCard(
                containerspagecountry: containerspagecountry[index],
              );
            },
          ),
        )
      ],
    );
  }
}

// * Widget

class ContainerCountryCard extends StatelessWidget {
  //Dependencias
  ContainersPageCountryDetailEntity containerspagecountry;

  ContainerCountryCard({super.key, required this.containerspagecountry});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, bottom: 45),
              height: 285,
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CANT. CONTENEDORES',
                    style: GoogleFonts.ultra(fontSize: 10, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  containerDetailCountry(
                    context: context,
                    imgCoun: NetworkImage(containerspagecountry.img),
                    titlePorcen: "${containerspagecountry.porcentaje} %",
                    titleCanti: containerspagecountry.cantidad,
                    funcCantCont: () {
                      Navigator.pushNamed(context, 'finall');
                    },
                    titlePais: containerspagecountry.name,
                  ),
                ],
              ),
            ),
          ],
        ),
        // const SizedBox(
        //   height: 270,
        //   child: VerticalDivider(
        //     thickness: 2,
        //     color: Colors.white,
        //   ),
        // ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 20, bottom: 45),
              height: 285,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    'PUERTOS DE DESTINO',
                    style: GoogleFonts.ultra(fontSize: 10, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  containerDestinyCountry(
                    context: context,
                    titleDes: containerspagecountry.destino1,
                    titleNumb: containerspagecountry.porcendes1,
                  ),
                  containerDestinyCountry(
                      context: context,
                      titleDes: containerspagecountry.destino2,
                      titleNumb: containerspagecountry.porcendes2),
                  containerDestinyCountry(
                      context: context,
                      titleDes: containerspagecountry.destino3,
                      titleNumb: containerspagecountry.porcendes3),
                  containerDestinyCountry(
                      context: context,
                      titleDes: containerspagecountry.destino4,
                      titleNumb: containerspagecountry.porcendes4),
                  containerDestinyCountry(
                      context: context,
                      titleDes: containerspagecountry.destino5,
                      titleNumb: containerspagecountry.porcendes5),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
