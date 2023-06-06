import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerPais({
  required BuildContext context,
  required ImageProvider<Object> imagePais,
  required String titleNumber,
  required String namePais,
  required Function() funcPais,
}) {
  return GestureDetector(
    onTap: funcPais,
    child: Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 110,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.transparent)),
            child: Text(
              namePais,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Image(
            image: imagePais,
            height: 29,
            width: 50,
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            height: 29,
            width: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  titleNumber,
                  style: GoogleFonts.ultra(),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.percent,
            color: Colors.white,
            size: 12,
          )
        ],
      ),
    ),
  );
}
