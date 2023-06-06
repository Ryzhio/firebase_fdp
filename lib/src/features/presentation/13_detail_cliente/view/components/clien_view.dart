import 'package:firebase_fdp/src/features/domain/entities/clien/clien_entity.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_cal_ln.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_detail_ln.dart';
import 'package:google_fonts/google_fonts.dart';

class ClienView extends StatelessWidget {
  final ClienListDetailEntity clienListDetailEntity;

  const ClienView({super.key, required this.clienListDetailEntity});

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
                      clienListDetailEntity.clienname,
                      style: GoogleFonts.ultra(
                        color: Colors.black,
                        fontSize: 14,
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
              containerCalibreNavi(
                context: context,
                titlePrinc: 'CAL. POR CAMPAÑA:',
                cali6: clienListDetailEntity.porcali6,
                cantCali6: clienListDetailEntity.cantporcali6,
                cali7: clienListDetailEntity.porcali7,
                cantCali7: clienListDetailEntity.cantporcali7,
                cali8: clienListDetailEntity.porcali8,
                cantCali8: clienListDetailEntity.cantporcali8,
                cali9: clienListDetailEntity.porcali9,
                cantCali9: clienListDetailEntity.cantporcali9,
                cali10: clienListDetailEntity.porcali10,
                cantCali10: clienListDetailEntity.cantporcali10,
                cali12: clienListDetailEntity.porcali12,
                cantCali12: clienListDetailEntity.cantporcali12,
                cali14: clienListDetailEntity.porcali14,
                cantCali14: clienListDetailEntity.cantporcali14,
                titlePorcenCajas: '% TOTAL DE CAJAS:',
                porcenTotalCajas: "${clienListDetailEntity.porcentotal} %",
                titleCajas: 'CANT. TOTAL DE CAJAS:',
                porcenTotal: clienListDetailEntity.cantotal,
                funciPorce: () {},
              ),
              containerNavierTotal(
                context: context,
                imageCountry: NetworkImage(clienListDetailEntity.img1),
                imageCountry2: NetworkImage(clienListDetailEntity.img2),
                titleDestiny1: clienListDetailEntity.desti1,
                titleDestiny2: clienListDetailEntity.desti2,
                titleDestiny3: clienListDetailEntity.desti3,
                titleDestiny4: clienListDetailEntity.desti4,
                pais1: clienListDetailEntity.pais1,
                pais2: clienListDetailEntity.pais2,
                titleEmpa1: clienListDetailEntity.empa1,
                titleEmpa2: clienListDetailEntity.empa2,
                titleEmpa3: clienListDetailEntity.empa3,
                titleVarie1: clienListDetailEntity.varie1,
                titleVarie2: "---",
                titleVarie3: '---',
                titleVarie4: '---',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
