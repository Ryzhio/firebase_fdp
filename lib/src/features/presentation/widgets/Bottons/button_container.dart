import 'package:flutter/material.dart';

Widget buttonContainer({
  required BuildContext context,
  required String titleText,
  Function()? funciC,
  required Color colorCB,
  required double widthC,
  required double heightC,
  required double fontSizeText,
  required FontWeight fontWeightText,
  required Color colorText,
}) {
  return GestureDetector(
    onTap: funciC,
    child: Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      alignment: Alignment.center,
      width: widthC,
      height: heightC,
      decoration: BoxDecoration(
        color: colorCB,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Text(
        titleText,
        style: TextStyle(
          fontSize: fontSizeText,
          fontWeight: fontWeightText,
          color: colorText,
        ),
      ),
    ),
  );
}
