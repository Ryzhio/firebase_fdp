import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerDestinyCountry({
  required BuildContext context,
  required String titleDes,
  required String titleNumb,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
          ),
          child: Text(
            titleDes,
            style: GoogleFonts.ultra(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 29,
          width: 54,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(249, 236, 193, 1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                titleNumb,
                style: GoogleFonts.ultra(),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Icon(
            Icons.percent,
            color: Colors.white,
            size: 15,
          ),
        )
      ],
    ),
  );
}
