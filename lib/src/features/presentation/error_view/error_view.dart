import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget with BaseView {
  String assetImagePath = "assets/erroricon.png";
  String errorTitle = "Network Error";
  String errorSubTitle =
      "Something bad happened, the app cannot continue to work properly.";

  ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 216,
                height: 216,
                image: AssetImage(assetImagePath),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Text(
                  errorTitle,
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  errorSubTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
