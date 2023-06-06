import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/logisticos/logisticos_entity.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_op.dart';

class LogisticosCardWidget extends StatelessWidget {
  //DEPENDENCIAS
  List<LogisticosDetailEntity> logisticos = [];

  LogisticosCardWidget({super.key, required this.logisticos});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                    'PARTICIPACIÓN OP',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),

            //ESTADISTICAS

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ESTADÍSTICAS :',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),

            //GRAFICA

            Container(
              color: Colors.black45,
              margin: const EdgeInsets.only(top: 10),
              height: 280,
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

            //PARTICIPACION OP

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
                    // "CANT.     ${logisticos.cantotal}"
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

            //* TITULOS
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 45, right: 30, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'OP',
                    style: GoogleFonts.ultra(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    'CANT.CONTENEDORES',
                    style: GoogleFonts.ultra(color: Colors.white, fontSize: 12),
                  ),
                  const Icon(
                    Icons.percent,
                    color: Colors.white,
                    size: 15,
                  ),
                ],
              ),
            ),

            Column(
              children: [
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    itemCount: logisticos.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return LogisticosCard(
                        logisticos: logisticos[index],
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

class LogisticosCard extends StatelessWidget with BaseView {
  //Dependencias
  LogisticosDetailEntity logisticos;

  LogisticosCard({super.key, required this.logisticos});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //contenedores op

        containerOP(
          context: context,
          funcOP1: () {
            coordinator.showOp(
              context: context,
              logisticos: logisticos,
            );
          },
          logisticos: logisticos,
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
    SalesData("AGUNSA", 23, const Color.fromARGB(233, 4, 255, 255)),
    SalesData("NEPTUNIA", 8, const Color.fromARGB(228, 255, 123, 0)),
    SalesData("RANSA", 34, const Color.fromARGB(226, 244, 0, 0)),
    SalesData("MIGUEL", 13, const Color.fromARGB(229, 43, 67, 185)),
    SalesData("TRANST.", 22, const Color.fromARGB(224, 140, 0, 255)),
  ];

  return columnData;
}
