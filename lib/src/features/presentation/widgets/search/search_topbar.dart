import 'package:flutter/material.dart';

Widget searchTopBar(BuildContext context) {
  return Container(
    height: 45,
    margin: const EdgeInsets.only(top: 20),
    padding: const EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      color: const Color.fromARGB(121, 255, 255, 255),
      borderRadius: BorderRadius.circular(25),
    ),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black38,
        ),
        hintText: 'Search',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}
