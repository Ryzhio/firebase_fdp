// ignore_for_file: sort_child_properties_last
import 'package:firebase_fdp/src/features/presentation/forgot_password_page/viewmodel/components/texformfield_forgot_email.dart';
import 'package:firebase_fdp/src/features/presentation/forgot_password_page/viewmodel/forgot_password_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/alerts/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/rounded_button.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/Bottons/back_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  //Dependencias
  final ForgotPasswordViewModel _viewModel;

  _ForgotPasswordState({ForgotPasswordViewModel? viewModel})
      : _viewModel = viewModel ?? DefaultForgotPasswordViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black, 25);
          },
        ),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              'FORGOT PASSWORD',
              style: GoogleFonts.ultra(
                color: Colors.black,
                fontSize: 23,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Please enter your email address. You will receive a link to create a new password via email.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            TextFormFieldEmailUpdatePassword(viewModel: _viewModel),
            createButton(
              labelButton: 'Send',
              color: Colors.amber.shade800,
              func: () => _ctaButtonTapped(context),
            ),
          ],
        ),
      )),
    );
  }
}

extension UserActions on _ForgotPasswordState {
  void _ctaButtonTapped(BuildContext context) {
    _viewModel.updatePassword().then((value) {
      showAlertDialog(
        context,
        const AssetImage('assets/lock.png'),
        "Your password has been reset",
        "You'll shortly receive an email with a code to setup a new password.",
        'Done',
        createButton(
          labelButton: 'Done',
          color: Colors.amber.shade800,
          func: () {
            Navigator.pushNamed(context, 'login');
          },
        ),
      );
    });
  }
}
