import 'package:flutter/material.dart';

Widget backButton(BuildContext context, Color color, double sizeB) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: color,
            size: sizeB,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
