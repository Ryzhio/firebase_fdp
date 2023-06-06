import 'package:flutter/material.dart';

Widget createButton({
  double width = 350,
  double height = 45,
  double radius = 20,
  bool isWithIcon = false,
  ImageProvider<Object>? icon,
  required String labelButton,
  required Color color,
  required Function() func,
}) {
  return Container(
    width: width,
    height: height,
    margin: const EdgeInsets.only(top: 20),
    child: isWithIcon
        ? _raisedButtonWithIcon(radius, icon!, labelButton, color, func)
        : _raisedButtonNotIcon(radius, labelButton, color, func),
  );
}

Widget _raisedButtonWithIcon(
  double radius,
  ImageProvider<Object> icon,
  String labelButton,
  Color color,
  Function() func,
) {
  return MaterialButton(
    onPressed: func,
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: icon,
          width: 20,
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            labelButton,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _raisedButtonNotIcon(
  double radius,
  String labelButton,
  Color color,
  Function() func,
) {
  return MaterialButton(
    onPressed: func,
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            labelButton,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ],
    ),
  );
}
