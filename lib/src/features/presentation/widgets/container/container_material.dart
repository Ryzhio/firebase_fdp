import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerMaterial({
  required BuildContext context,
  required String titlee,
  required String descripValue,
  required ImageProvider<Object> images,
  required Function() funci,
  required IconData? iconic,
  required Color colorText,
  required Color colorCont,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: funci,
          child: Material(
            color: Colors.transparent,
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 160,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: images,
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      titlee,
                      style: GoogleFonts.ultra(
                        color: colorText,
                        fontSize: 21,
                        letterSpacing: 3,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: colorCont,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            descripValue,
                            style: GoogleFonts.ultra(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
