import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/op/op_entity.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_pais.dart';

class OpView extends StatelessWidget {
  final OpListDetailEntity opListDetailEntity;

  const OpView({super.key, required this.opListDetailEntity});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 310,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white),
                  color: const Color.fromRGBO(189, 250, 227, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      opListDetailEntity.op,
                      style: GoogleFonts.ultra(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
          height: 740,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'PARTICIPACIÓN\n     CON PAISES',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        containerPais(
                          namePais: opListDetailEntity.name1,
                          context: context,
                          imagePais: const AssetImage('assets/paisesbajos.png'),
                          titleNumber: opListDetailEntity.por1,
                          funcPais: () {},
                        ),
                        containerPais(
                          namePais: opListDetailEntity.name2,
                          context: context,
                          imagePais: const AssetImage('assets/canada.jpg'),
                          titleNumber: opListDetailEntity.por2,
                          funcPais: () {},
                        ),
                        containerPais(
                          namePais: opListDetailEntity.name3,
                          context: context,
                          imagePais: const AssetImage('assets/eeuu.png'),
                          titleNumber: opListDetailEntity.por3,
                          funcPais: () {},
                        ),
                        containerPais(
                          namePais: opListDetailEntity.name4,
                          context: context,
                          imagePais: const AssetImage('assets/inglaterra.jpg'),
                          titleNumber: opListDetailEntity.por4,
                          funcPais: () {},
                        ),
                        const SizedBox(
                          width: 300,
                          child: Divider(
                            thickness: 2,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  "CANT.    ${opListDetailEntity.cant}",
                                  style: GoogleFonts.ultra(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
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
                                      opListDetailEntity.portotal,
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
                        ),
                      ],
                    ),
                  ],
                ),

                //ESTADISTICAS

                Padding(
                  padding: const EdgeInsets.only(top: 50),
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
                  margin: const EdgeInsets.only(top: 20),
                  height: 300,
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
                )
              ],
            ),
          ),
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
    SalesData("HOLANDA", 15, const Color.fromRGBO(4, 255, 255, 1)),
    SalesData("CANADA", 25, const Color.fromRGBO(255, 122, 0, 1)),
    SalesData("EE.UU", 44, const Color.fromRGBO(43, 66, 185, 1)),
    SalesData("REINO\n UNIDO", 16, const Color.fromRGBO(234, 222, 220, 1)),
  ];

  return columnData;
}
