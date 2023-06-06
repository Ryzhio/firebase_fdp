import 'package:flutter/material.dart';

class TextFieldsProfileDetailView extends StatelessWidget {
  const TextFieldsProfileDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _createTextFieldUsername(context),
        _createTextFieldEmail(context),
        _createTextFieldPhone(context),
        _createTextFieldDate(context),
        _createTextFieldDelivery(context),
      ],
    );
  }
}

Widget _createTextFieldUsername(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width * 0.8;
  // final screenHeight = MediaQuery.of(context).size.height * 0.6;
  return Container(
    width: screenWidth,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    ),
    child: const ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'User Name',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
  );
}

Widget _createTextFieldEmail(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width * 0.8;
  // final screenHeight = MediaQuery.of(context).size.height * 0.6;
  return Container(
    width: screenWidth,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    ),
    child: const ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
  );
}

Widget _createTextFieldPhone(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width * 0.8;
  // final screenHeight = MediaQuery.of(context).size.height * 0.6;
  return Container(
    width: screenWidth,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    ),
    child: const ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Phone',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
  );
}

Widget _createTextFieldDate(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width * 0.8;
  // final screenHeight = MediaQuery.of(context).size.height * 0.6;
  return Container(
    width: screenWidth,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    ),
    child: const ListTile(
      title: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hintText: 'Date of Birth',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
  );
}

Widget _createTextFieldDelivery(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width * 0.8;
  // final screenHeight = MediaQuery.of(context).size.height * 0.6;
  return Container(
    width: screenWidth,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    ),
    child: const ListTile(
      title: TextField(
        keyboardType: TextInputType.datetime,
        maxLines: 3,
        decoration: InputDecoration(
          hintText: 'Delivery',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
  );
}
