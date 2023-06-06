import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerLN({
  required BuildContext context,
  required String titleOP1,
  required String titleCant1,
  required String titlePorcent1,
  required String titleCantTotal,
  required String titlePorcentTotal,
  required Function() funcOP,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: funcOP,
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                ),
                child: Text(
                  titleOP1,
                  style: GoogleFonts.ultra(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: funcOP,
                    child: Text(
                      titleCant1,
                      style:
                          GoogleFonts.ultra(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        titlePorcent1,
                        style: GoogleFonts.ultra(
                            color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.percent,
                  color: Colors.white,
                  size: 10,
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
