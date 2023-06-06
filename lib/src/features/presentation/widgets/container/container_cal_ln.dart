import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/button_container.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerCalibreNavi({
  required BuildContext context,
  required String titlePrinc,
  required String cali6,
  required String cantCali6,
  required String cali7,
  required String cantCali7,
  required String cali8,
  required String cantCali8,
  required String cali9,
  required String cantCali9,
  required String cali10,
  required String cantCali10,
  required String cali12,
  required String cantCali12,
  required String cali14,
  required String cantCali14,
  required String titleCajas,
  required String titlePorcenCajas,
  required String porcenTotalCajas,
  required String porcenTotal,
  required Function() funciPorce,
}) {
  return Container(
    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white38,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              titlePrinc,
              style: GoogleFonts.ultra(
                fontSize: 15,
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
                            'CAL. ',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: '6',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.percent, size: 15),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cali6,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cantCali6,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'CAL. ',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: '7',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.percent, size: 15),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cali7,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cantCali7,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'CAL. ',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: '8',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.percent, size: 15),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cali8,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cantCali8,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'CAL. ',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: '9',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.percent, size: 15),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cali9,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cantCali9,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'CAL. ',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: '10',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.percent, size: 15),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cali10,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cantCali10,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'CAL. ',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: '12',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.percent, size: 15),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cali12,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cantCali12,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'CAL. ',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: '14',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.percent, size: 15),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cali14,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 12,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 50,
                            heightC: 25,
                            titleText: cantCali14,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                titleCajas,
                                style: GoogleFonts.ultra(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 100,
                            heightC: 20,
                            titleText: porcenTotal,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                titlePorcenCajas,
                                style: GoogleFonts.ultra(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 100,
                            heightC: 20,
                            titleText: porcenTotalCajas,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 12,
                          ),
                        ],
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
