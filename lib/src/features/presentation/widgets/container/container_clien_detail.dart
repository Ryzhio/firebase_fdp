import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerClienDetail({
  required BuildContext context,
  required String titlePri,
  required String titleCont1,
  required String titleCont2,
  required String titleCont3,
}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 25,
            width: 150,
            child: Row(
              children: [
                Text(
                  titlePri,
                  style: GoogleFonts.ultra(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
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
              titleCont1,
              style: GoogleFonts.ultra(color: Colors.black, fontSize: 10),
            )
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
              titleCont2,
              style: GoogleFonts.ultra(color: Colors.black, fontSize: 10),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        margin: const EdgeInsets.only(bottom: 10),
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.white),
        ),
        child: Text(
          titleCont3,
          style: GoogleFonts.ultra(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
      ),
    ],
  );
}
