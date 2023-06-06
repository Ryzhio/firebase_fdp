import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_navier_cliente.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerNavierDetailTotal({
  required BuildContext context,
  required ImageProvider<Object> imageCountry,
  required ImageProvider<Object> imageCountry2,
  required ImageProvider<Object> imageCountry3,
  required ImageProvider<Object> imageCountry4,
  required String pais,
  required String pais2,
  required String pais3,
  required String pais4,
  required String titlePorcentaje,
  required String titlePorcentaje2,
  required String titlePorcentaje3,
  required String titlePorcentaje4,
  required String titleCantiCont,
  required String puertoDestiny1,
  required String puertoDestiny2,
  required String puertoDestiny3,
  required String puertoDestiny4,
  required String puertoDestiny5,
  required String opL1,
  required String opL2,
  required String opL3,
  required String opL4,
  required String opL5,
  required String titleOP1,
  required String titleOP2,
  required String titleOP3,
  required String titleOP4,
  required String titleOP5,
  required String titleDES1,
  required String titleDES2,
  required String titleDES3,
  required String titleDES4,
  required String titleDES5,
}) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 550,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Text(
                    'PAISES:   ',
                    style: GoogleFonts.ultra(fontSize: 12, color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image(
                    image: imageCountry,
                    width: 40,
                  ),
                ),
                Container(
                  width: 130,
                  child: Text(
                    pais,
                    style: GoogleFonts.ultra(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 10, bottom: 10, top: 10),
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        titlePorcentaje,
                        style: GoogleFonts.ultra(
                            color: Colors.black, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image(
                    image: imageCountry2,
                    width: 40,
                  ),
                ),
                Container(
                  width: 130,
                  child: Text(
                    pais2,
                    style: GoogleFonts.ultra(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 10, bottom: 10, top: 10),
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        titlePorcentaje2,
                        style: GoogleFonts.ultra(
                            color: Colors.black, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image(
                    image: imageCountry3,
                    width: 40,
                  ),
                ),
                Container(
                  width: 130,
                  child: Text(
                    pais3,
                    style: GoogleFonts.ultra(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 10, bottom: 10, top: 10),
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        titlePorcentaje3,
                        style: GoogleFonts.ultra(
                            color: Colors.black, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Image(
                    image: imageCountry4,
                    width: 40,
                  ),
                ),
                Container(
                  width: 130,
                  child: Text(
                    pais4,
                    style: GoogleFonts.ultra(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 10, bottom: 10, top: 10),
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        titlePorcentaje4,
                        style: GoogleFonts.ultra(
                            color: Colors.black, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'CANT. DE CONTENEDORES:   ',
                  style: GoogleFonts.ultra(fontSize: 15, color: Colors.black),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 10, bottom: 10, top: 10),
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        titleCantiCont,
                        style: GoogleFonts.ultra(
                            color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "PUERTOS DE DESTINO:",
                      style:
                          GoogleFonts.ultra(color: Colors.black, fontSize: 12),
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: puertoDestiny1,
                          titleCont: titleDES1,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: puertoDestiny2,
                          titleCont: titleDES2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: puertoDestiny3,
                          titleCont: titleDES3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: puertoDestiny4,
                          titleCont: titleDES4,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: puertoDestiny5,
                          titleCont: titleDES5,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 280,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.white30,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "O.P.L.:",
                      style:
                          GoogleFonts.ultra(color: Colors.black, fontSize: 12),
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: opL1,
                          titleCont: titleOP1,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: opL2,
                          titleCont: titleOP2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: opL3,
                          titleCont: titleOP3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: opL4,
                          titleCont: titleOP4,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerNavieraCliente(
                          context: context,
                          titlePri: opL5,
                          titleCont: titleOP5,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
