import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/button_container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget containerContenedor({
  required BuildContext context,
  required String titlePrinc,
  required String cali5,
  required String cantCali5,
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
  required String titlePorcen,
  required String titleCajas,
  required String porcenTotal,
  required String porcenTotalFinal,
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
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titlePorcen,
                style: GoogleFonts.ultra(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              titlePrinc,
              style: GoogleFonts.ultra(
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 30,
                            heightC: 20,
                            titleText: '5',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.percent, size: 6),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 30,
                            heightC: 20,
                            titleText: cali5,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 6,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 30,
                            heightC: 20,
                            titleText: cantCali5,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'CAL.',
                            style: GoogleFonts.ultra(
                              fontSize: 6,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 30,
                            heightC: 20,
                            titleText: '9',
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.percent, size: 6),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 30,
                            heightC: 20,
                            titleText: cali9,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'CANT.',
                            style: GoogleFonts.ultra(
                              fontSize: 6,
                            ),
                          ),
                          buttonContainer(
                            context: context,
                            colorCB: Colors.black12,
                            widthC: 30,
                            heightC: 20,
                            titleText: cantCali9,
                            fontWeightText: FontWeight.bold,
                            colorText: Colors.black,
                            fontSizeText: 6,
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
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: '6',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cali6,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'CANT.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cantCali6,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: '10',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cali10,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'CANT.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cantCali10,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
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
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: '7',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cali7,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'CANT.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cantCali7,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: '12',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cali12,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cantCali12,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
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
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: '8',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cali8,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cantCali8,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: '14',
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.percent, size: 6),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cali14,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'CAL.',
                        style: GoogleFonts.ultra(
                          fontSize: 6,
                        ),
                      ),
                      buttonContainer(
                        context: context,
                        colorCB: Colors.black12,
                        widthC: 30,
                        heightC: 20,
                        titleText: cantCali14,
                        fontWeightText: FontWeight.bold,
                        colorText: Colors.black,
                        fontSizeText: 6,
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
                                titleCajas,
                                style: GoogleFonts.ultra(
                                  fontSize: 7,
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
                            fontSizeText: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Column(children: <Widget>[
                          CircularPercentIndicator(
                            radius: 50.0,
                            lineWidth: 13.0,
                            animation: true,
                            percent: 0.25,
                            center: Text(
                              porcenTotalFinal,
                              style: GoogleFonts.ultra(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.amber.shade800,
                          ),
                        ]),
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
