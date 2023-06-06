import 'package:firebase_fdp/src/features/presentation/widgets/inputdecoration/input_decoration_widget.dart';
import 'package:firebase_fdp/src/utils/helpers/validator/form_validator.dart';
import 'package:flutter/material.dart';

abstract class TextFormFieldDelegate {
  onChanged({
    required String newValue,
    required CustomTextFormFieldType customTextFormFieldType,
  });
}

enum CustomTextFormFieldType {
  email,
  password,
  phone,
  username,
  dateOfBirth,
}

class CustomTextFormField extends StatelessWidget {
  final CustomTextFormFieldType textFormFieldType;
  final String? hintext;
  final String labeltext;
  final Icon icono;
  final TextFormFieldDelegate delegate;
  final TextEditingController? _controller;

  const CustomTextFormField({
    super.key,
    required this.textFormFieldType,
    this.hintext,
    required this.delegate,
    required this.labeltext,
    required this.icono,
    TextEditingController? controller,
  }) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        // color: Colors.black12,
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextFormField(
        controller: _controller,
        keyboardType: getKeyboardType(textFormFieldType: textFormFieldType),
        obscureText: textFormFieldType == CustomTextFormFieldType.password
            ? true
            : false,
        decoration: InputDecorationWidget.inputDecoration(
          hintext: hintext,
          labeltext: labeltext,
          icono: icono,
        ),
        onChanged: (newValue) => delegate.onChanged(
            newValue: newValue, customTextFormFieldType: textFormFieldType),
        validator: (value) {
          switch (textFormFieldType) {
            case CustomTextFormFieldType.email:
              return EmailFormValidator.validateEmail(email: value ?? '');
            case CustomTextFormFieldType.password:
              return PasswordFormValidator.validatePassword(
                  password: value ?? '');
            case CustomTextFormFieldType.phone:
              return DefaultFormValidator.validateIsNotEmpty(
                  value: value ?? '');
            case CustomTextFormFieldType.username:
              return DefaultFormValidator.validateIsNotEmpty(
                  value: value ?? '');
            case CustomTextFormFieldType.dateOfBirth:
              return DefaultFormValidator.validateIsNotEmpty(
                  value: value ?? '');
          }
        },
      ),
    );
  }

  TextInputType? getKeyboardType(
      {required CustomTextFormFieldType textFormFieldType}) {
    switch (textFormFieldType) {
      case CustomTextFormFieldType.email:
        return TextInputType.emailAddress;
      case CustomTextFormFieldType.password:
        return TextInputType.visiblePassword;
      case CustomTextFormFieldType.phone:
        return TextInputType.phone;
      case CustomTextFormFieldType.username:
        return TextInputType.text;
      case CustomTextFormFieldType.dateOfBirth:
        return TextInputType.datetime;
    }
  }
}
