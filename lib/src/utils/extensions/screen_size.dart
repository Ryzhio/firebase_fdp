import 'package:flutter/material.dart';

//Extension publica
extension ScreenSize on double {
  double getScreenWidth({
    required BuildContext context,
  }) {
    var width = MediaQuery.of(context).size.width * 0.6;

    return width;
  }

  double getScreenHeight({required BuildContext context}) {
    var height = MediaQuery.of(context).size.height * 0.6;

    return height;
  }
}
