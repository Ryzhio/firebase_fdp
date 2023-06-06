import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/button_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerDetailConten(
    {required BuildContext context,
    required ImageProvider<Object> images,
    required String titleGeneral,
    required String titleConten,
    required String titleEmbarq}) {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white38,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titleGeneral,
              style: GoogleFonts.ultra(
                fontSize: 14,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: images,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'N° CONTENEDOR',
              style: GoogleFonts.ultra(
                fontSize: 12,
              ),
            ),
            Text(
              'N° EMBARQUE',
              style: GoogleFonts.ultra(
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                buttonContainer(
                  context: context,
                  colorCB: const Color.fromRGBO(71, 123, 98, 1),
                  widthC: 140,
                  heightC: 30,
                  titleText: titleConten,
                  fontWeightText: FontWeight.bold,
                  colorText: Colors.black,
                  fontSizeText: 10,
                ),
              ],
            ),
            Row(
              children: [
                buttonContainer(
                  context: context,
                  colorCB: const Color.fromRGBO(71, 123, 98, 1),
                  widthC: 140,
                  heightC: 30,
                  titleText: titleEmbarq,
                  fontWeightText: FontWeight.bold,
                  colorText: Colors.black,
                  fontSizeText: 10,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
