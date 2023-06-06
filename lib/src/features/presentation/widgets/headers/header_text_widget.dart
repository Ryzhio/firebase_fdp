import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget headerText(
    String texto, Color color, FontWeight fontWeight, double fontSize) {
  return Text(
    texto,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}

Widget headerText2(String texto, Color color, double fontSize) {
  return Text(
    texto,
    style: GoogleFonts.ultra(
      color: color,
      fontSize: fontSize,
    ),
  );
}

Widget headerText3(
  String texto,
  Color color,
  FontWeight fontWeight,
) {
  return Text(
    texto,
    style: TextStyle(
      color: color,
    ),
  );
}
