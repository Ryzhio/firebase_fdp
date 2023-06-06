import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/button_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerPorcentaje({
  required BuildContext context,
  required String textPropi,
  required String cali5,
  required String cali6,
  required String cali7,
  required String cali8,
  required String cali9,
  required String cali10,
  required String cali12,
  required String cali14,
  required String totalConten,
}) {
  return Container(
    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'PROPIETARIO:   ',
                  style: GoogleFonts.ultra(
                    fontSize: 6,
                  ),
                ),
                buttonContainer(
                  context: context,
                  colorCB: Colors.black12,
                  widthC: 140,
                  heightC: 20,
                  titleText: textPropi,
                  fontWeightText: FontWeight.bold,
                  colorText: Colors.black,
                  fontSizeText: 6,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'CAJA POR CALIBRE',
              style: GoogleFonts.ultra(
                fontSize: 6,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'CAL.',
                            style: GoogleFonts.ultra(
                              fontSize: 6,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 40,
                            heightC: 20,
                            titleText: '5',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 40,
                            heightC: 20,
                            titleText: cali5,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.percent, size: 6),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'CAL.',
                            style: GoogleFonts.ultra(
                              fontSize: 6,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 40,
                            heightC: 20,
                            titleText: '9',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 40,
                            heightC: 20,
                            titleText: cali9,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.percent, size: 6),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: '6',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: cali6,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: '10',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: cali10,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: '7',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: cali7,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: '12',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: cali12,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: '8',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: cali8,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: '14',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 40,
                        heightC: 20,
                        titleText: cali14,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '  TOTAL DE CAJAS\n POR CONTENEDOR :    ',
                            style: GoogleFonts.ultra(
                              fontSize: 7,
                            ),
                          )
                        ],
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.white,
                        widthC: 100,
                        heightC: 20,
                        titleText: totalConten,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
