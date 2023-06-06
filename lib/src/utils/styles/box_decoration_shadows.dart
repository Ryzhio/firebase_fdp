import 'package:flutter/material.dart';

const borderRadius = BorderRadius.all(Radius.circular(20));
const bosShadows = [
  BoxShadow(
      color: Color.fromRGBO(210, 211, 215, 1.0),
      offset: Offset(0, 5),
      blurRadius: 10)
];

Decoration createBoxDecorationWithShadows(
    {required BorderRadiusGeometry borderRadius,
    Color containerColor = Colors.white,
    List<BoxShadow> bosShadows = bosShadows}) {
  return BoxDecoration(
    borderRadius: borderRadius,
    color: containerColor,
    boxShadow: bosShadows,
  );
}
