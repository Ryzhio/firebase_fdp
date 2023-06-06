import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/button_container.dart';
import 'package:flutter/material.dart';

Widget containerContenedores({
  required BuildContext context,
  required String c1,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      buttonContainer(
        context: context,
        colorCB: Colors.white54,
        widthC: 300,
        heightC: 35,
        titleText: c1,
        fontWeightText: FontWeight.bold,
        fontSizeText: 15,
        colorText: Colors.black,
        funciC: () {
          Navigator.pushNamed(context, 'envio');
        },
      ),
    ],
  );
}
