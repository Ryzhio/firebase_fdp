import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/navieras/navieras_entity.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/conatainer_ln.dart';

class NavierasCardWidget extends StatelessWidget {
  //DEPENDENCIAS
  List<NavierasDetailEntity> navieras = [];

  NavierasCardWidget({super.key, required this.navieras});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'PARTICIPACIÓN DE LINEAS\n                   NAVIERAS',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
            // * TABLA

            //ESTADISTICAS

            // Padding(
            //   padding: const EdgeInsets.only(top: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Text(
            //         'ESTADÍSTICAS :',
            //         style: GoogleFonts.ultra(
            //           color: Colors.white,
            //           fontSize: 15,
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            //GRAFICA

            Container(
              color: Colors.black45,
              margin: const EdgeInsets.only(top: 20),
              height: 250,
              width: double.infinity,
              child: SfCartesianChart(
                title: ChartTitle(
                  text: 'TABLA DE PORCENTAJES GENERALES',
                  textStyle:
                      GoogleFonts.ultra(color: Colors.white, fontSize: 6),
                ),
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(
                  labelFormat: "{value}%",
                ),
                series: <ChartSeries>[
                  ColumnSeries<SalesData, String>(
                    pointColorMapper: (SalesData sales, _) => sales.z,
                    dataSource: getColumnData(),
                    xValueMapper: (SalesData sales, _) => sales.x,
                    yValueMapper: (SalesData sales, _) => sales.y,
                    dataLabelSettings: DataLabelSettings(
                      isVisible: true,
                      textStyle: GoogleFonts.ultra(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            //* DIVIDER
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 2, bottom: 2),
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "CANT.   372",
                    style: GoogleFonts.ultra(
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Ionicons.reorder_two_outline,
                  color: Colors.white,
                  size: 20,
                ),
                const SizedBox(
                  width: 20,
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
                        "100",
                        style: GoogleFonts.ultra(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.percent,
                  size: 20,
                  color: Colors.white,
                ),
              ],
            ),

            const Divider(
              thickness: 2,
              color: Colors.white,
            ),

            //PARTICIPACION OP

            Padding(
              padding: const EdgeInsets.only(
                  left: 45, right: 30, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'LN',
                    style: GoogleFonts.ultra(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    'CANT.CONTENEDORES',
                    style: GoogleFonts.ultra(color: Colors.white, fontSize: 12),
                  ),
                  const Icon(
                    Icons.percent,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ),

            Column(
              children: [
                SizedBox(
                  height: 320,
                  child: ListView.builder(
                    itemCount: navieras.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return NavierasCard(
                        navieras: navieras[index],
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// * WIDGET

class NavierasCard extends StatelessWidget with BaseView {
  //Dependencias
  NavierasDetailEntity navieras;

  NavierasCard({super.key, required this.navieras});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //contenedores op

        containerLN(
          context: context,
          titleOP1: navieras.navi,
          titleCant1: navieras.cant,
          titlePorcent1: navieras.porcentaje,
          // titleOP2: navieras.navi2,
          // titleCant2: navieras.cant2,
          // titlePorcent2: navieras.porcentaje2,
          // titleOP4: navieras.navi3,
          // titleCant4: navieras.cant3,
          // titlePorcent4: navieras.porcentaje3,
          // titleOP6: navieras.navi4,
          // titleCant6: navieras.cant4,
          // titlePorcent6: navieras.porcentaje4,
          // titleOP7: navieras.navi5,
          // titleCant7: navieras.cant5,
          // titlePorcent7: navieras.porcentaje5,
          // titleOP8: navieras.navi6,
          // titleCant8: navieras.cant6,
          // titlePorcent8: navieras.porcentaje6,
          titleCantTotal: "CANT.     ${navieras.cantotal}",
          titlePorcentTotal: navieras.porcentotal,
          funcOP: () {
            coordinator.showNavi(
              context: context,
              navieras: navieras,
            );
          },
        ),
      ],
    );
  }
}

class SalesData {
  String x;
  double y;
  Color z;

  SalesData(this.x, this.y, this.z);
}

dynamic getColumnData() {
  List<SalesData> columnData = <SalesData>[
    SalesData("C-C", 34, const Color.fromRGBO(4, 255, 255, 1)),
    SalesData("HS", 1, const Color.fromRGBO(255, 122, 0, 1)),
    // SalesData("TS", 8, const Color.fromRGBO(244, 0, 0, 1)),
    SalesData("ML", 1, const Color.fromRGBO(43, 66, 185, 1)),
    // SalesData("MSC", 12, const Color.fromRGBO(234, 222, 220, 1)),
    SalesData("SM", 36, const Color.fromRGBO(4, 206, 55, 1)),
    SalesData("SL", 20, const Color.fromRGBO(250, 232, 0, 1)),
    SalesData("ST", 8, const Color.fromRGBO(255, 34, 244, 1)),
    // SalesData("TRR", 12, const Color.fromRGBO(244, 0, 100, 1)),
  ];

  return columnData;
}
