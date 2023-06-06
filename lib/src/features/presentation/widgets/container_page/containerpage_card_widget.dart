import 'package:firebase_fdp/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/containerspage/containerspage_entity.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/container/container_pais.dart';

class ContainerPageCardWidget extends StatelessWidget {
  //Dependencias
  List<ContainersPageDetailEntity> containerspage = [];

  ContainerPageCardWidget({super.key, required this.containerspage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 800,
          child: ListView.builder(
            itemCount: containerspage.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return ContainerPageCard(
                containerspage: containerspage[index],
              );
            },
          ),
        )
      ],
    );
  }
}

class ContainerPageCard extends StatelessWidget {
  //Dependencias
  ContainersPageDetailEntity containerspage;

  ContainerPageCard({super.key, required this.containerspage});

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
            const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'DESTINOS :',
                    style: GoogleFonts.ultra(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),

            containerPais(
              namePais: containerspage.name1,
              context: context,
              imagePais: NetworkImage(containerspage.img1),
              titleNumber: containerspage.porcentaje1,
              funcPais: () {
                Navigator.pushNamed(context, 'cdetail');
              },
            ),
            containerPais(
              namePais: containerspage.name2,
              context: context,
              imagePais: NetworkImage(containerspage.img2),
              titleNumber: containerspage.porcentaje2,
              funcPais: () {
                Navigator.pushNamed(context, 'cdetail');
              },
            ),
            containerPais(
              namePais: containerspage.name3,
              context: context,
              imagePais: NetworkImage(containerspage.img3),
              titleNumber: containerspage.porcentaje3,
              funcPais: () {
                Navigator.pushNamed(context, 'cdetail');
              },
            ),
            containerPais(
              namePais: containerspage.name4,
              context: context,
              imagePais: NetworkImage(containerspage.img4),
              titleNumber: containerspage.porcentaje4,
              funcPais: () {
                Navigator.pushNamed(context, 'cdetail');
              },
            ),

            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                thickness: 2,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'cdetail');
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
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
                        "CANT.     ${containerspage.cantidadcont}",
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
                            containerspage.porcentotal,
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
            ),

            //ESTADISTICAS

            Padding(
              padding: const EdgeInsets.only(top: 60),
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
                    // name: "CONTENEDORES",

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
    );
  }
}

//GRAFICA DE BARRAS

class SalesData {
  String x;
  double y;
  Color z;

  SalesData(this.x, this.y, this.z);
}

dynamic getColumnData() {
  List<SalesData> columnData = <SalesData>[
    SalesData("CANADA", 18, const Color.fromARGB(232, 250, 1, 1)),
    SalesData("EE.UU", 40, const Color.fromARGB(220, 13, 44, 199)),
    SalesData("HOLANDA", 24, const Color.fromARGB(235, 4, 255, 17)),
    SalesData("REINO\nUNIDO", 18, const Color.fromARGB(243, 254, 3, 91)),
  ];

  return columnData;
}
