import 'package:firebase_fdp/src/features/domain/entities/logisticos/logisticos_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerOP({
  required LogisticosDetailEntity logisticos,
  required BuildContext context,
  required Function() funcOP1,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: funcOP1,
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                ),
                child: Text(
                  logisticos.op,
                  style: GoogleFonts.ultra(color: Colors.white, fontSize: 11),
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
                    onTap: funcOP1,
                    child: Text(
                      logisticos.cant,
                      style:
                          GoogleFonts.ultra(color: Colors.black, fontSize: 10),
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
                        logisticos.porcentaje,
                        style: GoogleFonts.ultra(
                            color: Colors.black, fontSize: 10),
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
