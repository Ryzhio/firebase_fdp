import 'package:firebase_fdp/src/features/domain/entities/navi/navi_entity.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_navieras_detai.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NaviView extends StatelessWidget {
  final NaviListDetailEntity naviListDetailEntity;

  const NaviView({super.key, required this.naviListDetailEntity});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 340,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white),
                  color: const Color.fromRGBO(189, 250, 227, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      naviListDetailEntity.naviname,
                      style: GoogleFonts.ultra(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
          ),
          child: Column(
            children: [
              containerNavierDetailTotal(
                context: context,
                pais: naviListDetailEntity.pais1,
                imageCountry: const AssetImage('assets/paisesbajos.png'),
                titlePorcentaje: "${naviListDetailEntity.por1} %",
                pais2: naviListDetailEntity.pais2,
                imageCountry2: const AssetImage('assets/eeuu.png'),
                titlePorcentaje2: "${naviListDetailEntity.por2} %",
                pais3: naviListDetailEntity.pais3,
                imageCountry3: const AssetImage('assets/inglaterra.jpg'),
                titlePorcentaje3: "${naviListDetailEntity.por3} %",
                pais4: naviListDetailEntity.pais4,
                imageCountry4: const AssetImage('assets/canada.jpg'),
                titlePorcentaje4: "${naviListDetailEntity.por4} %",
                titleCantiCont: naviListDetailEntity.cantotal,
                puertoDestiny1: naviListDetailEntity.desti1,
                titleDES1: "${naviListDetailEntity.pordes1} %",
                puertoDestiny2: naviListDetailEntity.desti2,
                titleDES2: "${naviListDetailEntity.pordes2} %",
                puertoDestiny3: naviListDetailEntity.desti3,
                titleDES3: "${naviListDetailEntity.pordes3} %",
                puertoDestiny4: naviListDetailEntity.desti4,
                titleDES4: "${naviListDetailEntity.pordes4} %",
                puertoDestiny5: naviListDetailEntity.desti5,
                titleDES5: "${naviListDetailEntity.pordes5} %",
                opL1: naviListDetailEntity.op1,
                titleOP1: "${naviListDetailEntity.porop1} %",
                opL2: naviListDetailEntity.op2,
                titleOP2: "${naviListDetailEntity.porop2} %",
                opL3: naviListDetailEntity.op3,
                titleOP3: "${naviListDetailEntity.porop3} %",
                opL4: naviListDetailEntity.op4,
                titleOP4: "${naviListDetailEntity.porop4} %",
                opL5: naviListDetailEntity.op5,
                titleOP5: "${naviListDetailEntity.porop5} %",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
