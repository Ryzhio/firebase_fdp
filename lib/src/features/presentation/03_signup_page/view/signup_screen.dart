import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/03_signup_page/viewmodel/sign_up_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/states_providers/loading_status_state_provider.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/TextFormField/custom_text_formfield.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/headers/header_text_widget.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget with BaseView {
  final SignUpViewModel _viewModel;

  SignUpScreen({super.key, SignUpViewModel? viewModel})
      : _viewModel = viewModel ?? DefaultSignUpViewModel();

  // const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _viewModel.initState(
        loadingStateProvider: Provider.of<LoadingStateProvider>(context));

    final size = MediaQuery.of(context).size;

    return _viewModel.loadingState.isLoading
        ? loadingView
        : Scaffold(
            body: GestureDetector(
              onTap: () {
                final FocusScopeNode focus = FocusScope.of(context);
                if (!focus.hasPrimaryFocus && focus.hasFocus) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
              },
              child: Container(
                color: Colors.black38,
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    //LOGIN SCREEN HEADER
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: size.height * 0.4,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'FRUTAS',
                                style: GoogleFonts.ultra(
                                  color: const Color.fromARGB(255, 24, 207, 7),
                                  fontSize: 23,
                                  letterSpacing: 1.5,
                                ),
                              ),
                              Text(
                                ' DE PIURA',
                                style: GoogleFonts.ultra(
                                  color: const Color.fromARGB(255, 3, 101, 7),
                                  fontSize: 23,
                                  letterSpacing: 1.5,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset('assets/mango.png', scale: 9),
                        ],
                      ),
                    ),
                    //LOGIN SCREEN SIGN-IN FORM
                    CustomScrollView(
                      slivers: [
                        SliverList(
                            delegate: SliverChildListDelegate([
                          Center(
                            child: Form(
                              key: _viewModel.formkey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 150,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    width: double.infinity,
                                    height: 695,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 15,
                                          offset: Offset(10, 10),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        headerText2('SIGNUP', Colors.black, 25),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Create an account',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black38),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          width: 300,
                                          child: Column(
                                            children: [
                                              //TextsFormField

                                              CustomTextFormField(
                                                textFormFieldType:
                                                    CustomTextFormFieldType
                                                        .username,
                                                hintext: 'Enter Name',
                                                delegate: _viewModel,
                                                labeltext: 'Name',
                                                icono: const Icon(Icons.person),
                                              ),
                                              CustomTextFormField(
                                                textFormFieldType:
                                                    CustomTextFormFieldType
                                                        .email,
                                                hintext: 'Enter Email',
                                                delegate: _viewModel,
                                                labeltext: 'Email',
                                                icono: const Icon(Icons
                                                    .alternate_email_rounded),
                                              ),
                                              CustomTextFormField(
                                                textFormFieldType:
                                                    CustomTextFormFieldType
                                                        .phone,
                                                hintext: 'Enter Phone',
                                                delegate: _viewModel,
                                                labeltext: 'Phone',
                                                icono: const Icon(
                                                    Icons.phone_android_sharp),
                                              ),
                                              CustomTextFormField(
                                                textFormFieldType:
                                                    CustomTextFormFieldType
                                                        .password,
                                                hintext: 'Enter Password',
                                                delegate: _viewModel,
                                                labeltext: 'Password',
                                                icono: const Icon(
                                                    Icons.lock_outlined),
                                              ),
                                              GestureDetector(
                                                onTap: () =>
                                                    _selectDate(context),
                                                child: AbsorbPointer(
                                                  child: CustomTextFormField(
                                                    textFormFieldType:
                                                        CustomTextFormFieldType
                                                            .dateOfBirth,
                                                    hintext:
                                                        'Enter Date of Birth',
                                                    delegate: _viewModel,
                                                    controller: _viewModel
                                                        .dateController,
                                                    labeltext: 'Date of Birth',
                                                    icono: const Icon(Icons
                                                        .calendar_month_outlined),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 24,
                                              ),

                                              //LOGIN BUTTON

                                              GestureDetector(
                                                onTap: () {
                                                  _ctaTapped(context);
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(15),
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                                50)
                                                            .copyWith(
                                                      topRight:
                                                          const Radius.circular(
                                                              0),
                                                    ),
                                                    gradient:
                                                        const LinearGradient(
                                                      colors: [
                                                        Colors.blue,
                                                        Colors.green,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'SIGNUP',
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(.8),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              //SIGNUP BUTTON
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Already have an Account?",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context, 'login');
                                                    },
                                                    child: const Text(
                                                      'Login Here',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, 'forgot');
                                    },
                                    child: Text(
                                      'Forgot password?',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(.8),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }
}

extension UserAction on SignUpScreen {
  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _viewModel.selectedDate,
      firstDate: DateTime(1960, 1),
      lastDate: DateTime(2100),
      locale: Locale('es', ''),
    );
    if (picked != null && picked != _viewModel.selectedDate) {
      _viewModel.signUpModel?.date =
          "${picked.toLocal().day}/${picked.toLocal().month}/${picked.toLocal().year}";
      _viewModel.dateController.text =
          "${picked.toLocal().day}/${picked.toLocal().month}/${picked.toLocal().year}";
    }
  }

  void _ctaTapped(BuildContext context) {
    if (_viewModel.isFormValidate()) {
      _viewModel.signUp().then((result) {
        switch (result.status) {
          case ResultStatus.success:
            Navigator.pushNamed(context, 'menu');
            break;
          case ResultStatus.error:
            errorStateProvider.setFailure(
                context: context, value: result.error!);
            break;
        }
      });
    }
  }
}
