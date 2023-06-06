import 'package:flutter/material.dart';

class ErrorAlertView {
  static Future showErrorAlertDialog({
    required BuildContext context,
    required String subtitle,
    dynamic Function()? ctaButtonAction,
  }) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          content: SizedBox(
            height: 320,
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/erroricon.png'),
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  child: const Text(
                    'Network Error',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: MaterialButton(
                    height: 40,
                    minWidth: 240,
                    onPressed: ctaButtonAction,
                    color: Colors.amber.shade800,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.amber.shade800,
                        width: 2,
                      ),
                    ),
                    child: const Text(
                      'Ir a inicio',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
