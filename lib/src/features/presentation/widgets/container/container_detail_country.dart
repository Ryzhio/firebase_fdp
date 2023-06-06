import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

Widget containerDetailCountry({
  required BuildContext context,
  required ImageProvider<Object> imgCoun,
  required String titlePorcen,
  required String titleCanti,
  required String titlePais,
  required Function() funcCantCont,
}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: funcCantCont,
            child: Container(
              margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
              padding: const EdgeInsets.only(left: 5, right: 5),
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image(
                image: imgCoun,
                width: 70,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titlePais,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          width: 125,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titlePorcen,
                style: GoogleFonts.ultra(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                child: Icon(
                  Ionicons.reorder_two_outline,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              GestureDetector(
                onTap: funcCantCont,
                child: Container(
                  margin: const EdgeInsets.only(left: 5, top: 5, right: 5),
                  height: 45,
                  width: 43,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        titleCanti,
                        style: GoogleFonts.ultra(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
