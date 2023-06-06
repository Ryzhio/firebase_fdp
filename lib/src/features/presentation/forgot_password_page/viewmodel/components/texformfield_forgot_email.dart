import 'package:firebase_fdp/src/features/presentation/forgot_password_page/viewmodel/forgot_password_view_model.dart';
import 'package:firebase_fdp/src/utils/helpers/validator/form_validator.dart';
import 'package:flutter/material.dart';

class TextFormFieldEmailUpdatePassword extends StatelessWidget {
  final ForgotPasswordViewModel viewModel;

  const TextFormFieldEmailUpdatePassword({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        validator: (value) =>
            EmailFormValidator.validateEmail(email: value ?? ""),
        onChanged: (NewValue) => viewModel.email = NewValue,
      ),
    );
  }
}
