import 'package:firebase_fdp/src/features/presentation/widgets/container/container_clien_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerNavierTotal({
  required BuildContext context,
  required ImageProvider<Object> imageCountry,
  required ImageProvider<Object> imageCountry2,
  required String pais1,
  required String pais2,
  required String titleDestiny1,
  required String titleDestiny2,
  required String titleDestiny3,
  required String titleDestiny4,
  required String titleEmpa1,
  required String titleEmpa2,
  required String titleEmpa3,
  required String titleVarie1,
  required String titleVarie2,
  required String titleVarie3,
  required String titleVarie4,
}) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 5, bottom: 20),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        height: 440,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'PAIS:   ',
                          style: GoogleFonts.ultra(
                              fontSize: 10, color: Colors.black),
                        ),
                        Text(
                          pais1,
                          style: GoogleFonts.ultra(
                              fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          child: Image(
                            image: imageCountry,
                            width: 60,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'PAIS:   ',
                              style: GoogleFonts.ultra(
                                  fontSize: 10, color: Colors.black),
                            ),
                            Text(
                              pais2,
                              style: GoogleFonts.ultra(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Image(
                                image: imageCountry2,
                                width: 60,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          child: Text(
                            'DESTINO:',
                            style: GoogleFonts.ultra(
                                color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, top: 5, bottom: 5),
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
                            titleDestiny1,
                            style: GoogleFonts.ultra(
                                color: Colors.black, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, top: 5, bottom: 5),
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
                            titleDestiny2,
                            style: GoogleFonts.ultra(
                                color: Colors.black, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, top: 5, bottom: 5),
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
                            titleDestiny3,
                            style: GoogleFonts.ultra(
                                color: Colors.black, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, top: 5, bottom: 5),
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
                            titleDestiny4,
                            style: GoogleFonts.ultra(
                                color: Colors.black, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.white30,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        containerClienDetail(
                          context: context,
                          titlePri: "EMPACADORA:",
                          titleCont1: titleEmpa1,
                          titleCont2: titleEmpa2,
                          titleCont3: titleEmpa3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        containerClienDetail(
                          context: context,
                          titlePri: "VARIEDAD:",
                          titleCont1: titleVarie1,
                          titleCont2: titleVarie2,
                          titleCont3: titleVarie3,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
