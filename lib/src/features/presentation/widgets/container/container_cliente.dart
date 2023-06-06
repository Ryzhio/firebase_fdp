import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerCliente({
  required BuildContext context,
  required String titlePri,
  required String titleCont,
}) {
  return Row(
    children: [
      SizedBox(
        height: 25,
        width: 90,
        child: Row(
          children: [
            Text(
              titlePri,
              style: GoogleFonts.ultra(color: Colors.black, fontSize: 10),
            ),
          ],
        ),
      ),
      Container(
        height: 25,
        width: 100,
        margin: const EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 10),
        padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
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
              titleCont,
              style: GoogleFonts.ultra(color: Colors.black, fontSize: 10),
            )
          ],
        ),
      ),
    ],
  );
}
