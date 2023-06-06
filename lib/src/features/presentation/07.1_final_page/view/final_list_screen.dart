import 'package:firebase_fdp/src/features/presentation/07.1_final_page/view/final_list_card_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/domain/entities/conte/conte_entity.dart';

// enum FinalListCarrouselStyle { list, listCards }

class FinalListCarrousel extends StatelessWidget {
  final List<ConteListDetailEntity> conteList;
  // final bool isShortedVisualization;
  // final FinalListCarrouselStyle carrouselStyle;

  FinalListCarrousel({
    super.key,
    required this.conteList,
    // required this.isShortedVisualization,
    // required this.carrouselStyle
  });

  @override
  Widget build(BuildContext context) {
    // int itemCount = conteList.length > 3 ? 3 : conteList.length;
    // int dynamicHeight =
    //     isShortedVisualization ? 1000 * itemCount : 1200 * conteList.length;

    return Container(
      height: 650,
      child: ListView.builder(
        itemCount: conteList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return FinalListCardView(
            conteListDetailEntity: conteList[index],
          );
        },
      ),
      // alignment: Alignment.center,
      // height: dynamicHeight.toDouble(),
      // child: ListView.builder(
      //     physics: NeverScrollableScrollPhysics(),
      //     itemCount: isShortedVisualization ? itemCount : conteList.length,
      //     scrollDirection: Axis.vertical,
      //     itemBuilder: (BuildContext context, int index) {
      //       switch (carrouselStyle) {
      //         case FinalListCarrouselStyle.list:
      //           return FinalListCardView(
      //             conteListDetailEntity: conteList[index],
      //           );
      //         case FinalListCarrouselStyle.listCards:
      //           // TODO: Montar luego
      //           return Container();
      //       }
      //     }),
    );
  }
}
