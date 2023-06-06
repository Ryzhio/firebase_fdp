import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_detail_contenedor.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_porcentaje.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetailContainerPage extends StatelessWidget {
  const DetailContainerPage({super.key});

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
              containerDetailConten(
                context: context,
                images: const AssetImage('assets/clien.png'),
                titleGeneral: 'DETALLE POR PROPIETARIO',
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
                      containerPorcentaje(
                        context: context,
                        textPropi: 'VALLADOLID RUISDIAS MARIA ESTHER',
                        cali5: '',
                        cali6: '234',
                        cali7: '504',
                        cali8: '2255',
                        cali9: '612',
                        cali10: '863',
                        cali12: '',
                        cali14: '',
                        totalConten: '4234',
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Column(children: <Widget>[
                          CircularPercentIndicator(
                            radius: 120.0,
                            lineWidth: 13.0,
                            animation: true,
                            percent: 0.25,
                            center: Text(
                              "% 25",
                              style: GoogleFonts.ultra(
                                fontSize: 35.0,
                                color: Colors.white,
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.amber.shade800,
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
