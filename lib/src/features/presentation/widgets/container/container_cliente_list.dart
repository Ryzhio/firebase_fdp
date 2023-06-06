import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerClientList({
  required BuildContext context,
  required String titleClient1,
  required String titleCant1,
  required Function() funcOP,
}) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            //List of clients

            GestureDetector(
              onTap: funcOP,
              child: Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 198, 44),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titleClient1,
                      style:
                          GoogleFonts.ultra(color: Colors.black, fontSize: 12),
                    ),
                    Text(
                      titleCant1,
                      style:
                          GoogleFonts.ultra(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
