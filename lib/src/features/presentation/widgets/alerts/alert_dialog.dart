import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';

void showAlertDialog(
  BuildContext context,
  ImageProvider<Object> imagePath,
  String headerTitle,
  String headerSubTitle,
  String labelButton,
  Widget doneButton,
) async {
  await showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        content: SizedBox(
          height: 400,
          child: Column(
            children: [
              Image(
                image: imagePath,
                width: 130,
                height: 130,
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child:
                    headerText(headerTitle, Colors.black, FontWeight.bold, 20),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: headerText(
                    headerSubTitle, Colors.black, FontWeight.w400, 15),
              ),
              doneButton
            ],
          ),
        ),
      );
    },
  );
}
