// ignore_for_file: prefer_const_constructors
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/button_container.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_contenedor.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_detail_contenedor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnvioFinalPage extends StatefulWidget {
  const EnvioFinalPage({super.key});

  @override
  State<EnvioFinalPage> createState() => _EnvioFinalPageState();
}

class _EnvioFinalPageState extends State<EnvioFinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              backButton(context, Colors.white54, 25),
              containerDetailConten(
                context: context,
                images: AssetImage('assets/final.png'),
                titleGeneral: 'DETALLES DEL CONTENEDOR',
                titleConten: 'MNBU 3153286 ',
                titleEmbarq: 'P006-MANGO',
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),

                      //CLIENTE

                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'CLIENTE',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: const Divider(
                                thickness: 3,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'CLIENTE FINAL :',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                buttonContainer(
                                  context: context,
                                  colorCB: Colors.black12,
                                  widthC: 150,
                                  heightC: 30,
                                  titleText: 'EXP GROUP LLC',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('assets/manos.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      //Detalle De Transito

                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'DETALLE DE TRÁNSITO',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 3,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'F. EMBARQUE',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'F. ZARPE',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'F. ARRIBO',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 100,
                                  heightC: 20,
                                  titleText: '27/11/2021',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 70,
                                  heightC: 20,
                                  titleText: '04/12/2021',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 100,
                                  heightC: 20,
                                  titleText: '27/12/2021',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '   TIEMPO\nTRANSITO',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'DIAS DE DEMORA\n        EN ARRIBO',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 100,
                                  heightC: 20,
                                  titleText: '23 DIAS',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 70,
                                  heightC: 20,
                                  titleText: '-1',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            const Divider(
                              thickness: 3,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'PUERTO DE DESTINO',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'PUERTO DE ORIGEN',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 100,
                                  heightC: 20,
                                  titleText: 'BROOKLYN',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 70,
                                  heightC: 20,
                                  titleText: 'PAITA',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'LINEA NAVIERA',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'OPE.LOGISTICO',
                                  style: GoogleFonts.ultra(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 150,
                                  heightC: 20,
                                  titleText: 'SEABOARD MARINE LTD',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                                buttonContainer(
                                  context: context,
                                  colorCB: Color.fromRGBO(71, 123, 98, 1),
                                  widthC: 130,
                                  heightC: 20,
                                  titleText: 'TRANSTOTAL',
                                  fontWeightText: FontWeight.bold,
                                  colorText: Colors.black,
                                  fontSizeText: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      //CONTENIDO DEL CONTENEDOR

                      containerContenedor(
                        context: context,
                        titlePorcen: 'DETALLE DEL CONTENEDOR',
                        titlePrinc: 'CAJA POR CALIBRE',
                        cali5: '',
                        cantCali5: '',
                        cali6: '4',
                        cantCali6: '',
                        cali7: '6',
                        cantCali7: '504',
                        cali8: '7',
                        cantCali8: '3024',
                        cali9: '4',
                        cantCali9: '1008',
                        cali10: '5',
                        cantCali10: '1008',
                        cali12: '',
                        cantCali12: '',
                        cali14: '',
                        cantCali14: '',
                        titleCajas: '  TOTAL DE CAJAS\n POR CONTENEDOR :',
                        porcenTotal: '% 25',
                        porcenTotalFinal: '100 %',
                        funciPorce: () {
                          Navigator.pushNamed(context, 'detail');
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 15,
              // ),

              // DETALLE DEL CONTENEDOR

              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
              //     height: 80,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     child: Column(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Text(
              //               'DETALLE DEL CONTENEDOR',
              //               style: GoogleFonts.ultra(
              //                 fontSize: 10,
              //               ),
              //             )
              //           ],
              //         ),
              //         const SizedBox(
              //           height: 10,
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   '  TOTAL DE CAJAS\n POR CONTENEDOR :',
              //                   style: GoogleFonts.ultra(
              //                     fontSize: 7,
              //                   ),
              //                 )
              //               ],
              //             ),
              //             buttonContainer(
              //               context: context,
              //               colorCB: Colors.black12,
              //               widthC: 100,
              //               heightC: 20,
              //               titleText: '5544',
              //               fontWeightText: FontWeight.bold,
              //               colorText: Colors.black,
              //               fontSizeText: 10,
              //             ),
              //             Container(
              //               color: Colors.transparent,
              //               child: Text(
              //                 '% 100',
              //                 style: GoogleFonts.ultra(
              //                   color: Colors.green,
              //                   fontSize: 20,
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
