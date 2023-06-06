import 'package:firebase_fdp/src/features/presentation/widgets/container/container_cliente.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerClienteTotal({
  required BuildContext context,
  required ImageProvider<Object> imageCountry,
  required String titlePorcen,
  required String titleDestiny,
  required String titleCont1,
  required String titleCont2,
  required String titleCont3,
}) {
  return Container(
    margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white30,
      borderRadius: BorderRadius.circular(20),
      // border: Border.all(color: Colors.white
      // ),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'PAIS',
                  style: GoogleFonts.ultra(fontSize: 8, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Image(
                        image: imageCountry,
                        width: 50,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
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
                            titlePorcen,
                            style: GoogleFonts.ultra(
                                color: Colors.black, fontSize: 6),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Text(
                        'DESTINO',
                        style:
                            GoogleFonts.ultra(color: Colors.black, fontSize: 6),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            titleDestiny,
                            style: GoogleFonts.ultra(
                                color: Colors.black, fontSize: 6),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Text(
                        'PUERTO DE ORIGEN',
                        style:
                            GoogleFonts.ultra(color: Colors.black, fontSize: 6),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 190,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.white30,
              ),
            ),
            Column(
              children: [
                Text(
                  'PUERTOS DE DESTINO',
                  style: GoogleFonts.ultra(color: Colors.black, fontSize: 8),
                ),
                Row(
                  children: [
                    containerCliente(
                      context: context,
                      titlePri: 'RUTTERDAM',
                      titleCont: titleCont1,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 160,
                  child: Divider(
                    color: Colors.white38,
                    thickness: 2,
                  ),
                ),
                Text(
                  'OPERADOR LOGISTICO',
                  style: GoogleFonts.ultra(color: Colors.black, fontSize: 8),
                ),
                containerCliente(
                  context: context,
                  titlePri: 'NEPTUNA',
                  titleCont: titleCont2,
                ),
                containerCliente(
                  context: context,
                  titlePri: 'RANSA',
                  titleCont: titleCont3,
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}
