import 'package:flutter/material.dart';
import 'package:firebase_fdp/src/base/views/base_view.dart';
import 'package:firebase_fdp/src/features/presentation/02_login_page/viewmodel/log_in_view_model.dart';
import 'package:firebase_fdp/src/features/presentation/states_providers/loading_status_state_provider.dart';
import 'package:firebase_fdp/src/features/presentation/widgets/textFormField/custom_text_formfield.dart';
import 'package:firebase_fdp/src/utils/helpers/resulttype/result_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget with BaseView {
  final LoginViewModel _viewModel;

  LoginScreen({super.key, LoginViewModel? viewModel})
      : _viewModel = viewModel ?? DefaultLoginViewModel();

  @override
  Widget build(BuildContext context) {
    //Inicializar ViewModel
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
                            height: 50,
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
                            height: 20,
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
                                    height: 260,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    width: double.infinity,
                                    height: 500,
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
                                          height: 25,
                                        ),
                                        Text(
                                          'WELCOME BACK',
                                          style:
                                              GoogleFonts.ultra(fontSize: 25),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Login to you account',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black38),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 9,
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
                                                        .email,
                                                hintext: 'Enter Email',
                                                delegate: _viewModel,
                                                labeltext: 'Email',
                                                icono: const Icon(Icons
                                                    .alternate_email_rounded),
                                              ),
                                              const SizedBox(
                                                height: 10,
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

                                              const SizedBox(
                                                height: 50,
                                              ),
                                              //LOGIN BUTTON
                                              GestureDetector(
                                                onTap: () {
                                                  _ctaButtonTapped(context);
                                                  // if (formkey.currentState!
                                                  //     .validate()) {}
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
                                                        Color.fromARGB(
                                                            255, 13, 252, 21),
                                                        Colors.amber,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'LOGIN',
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
                                                height: 25,
                                              ),
                                              //SIGNUP BUTTON
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Don't have an Account?",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context, 'signup');
                                                    },
                                                    child: const Text(
                                                      'SignUp Here',
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
                                    height: 40,
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

extension UserActions on LoginScreen {
  void _ctaButtonTapped(BuildContext context) {
    if (_viewModel.isFormValidate()) {
      _viewModel
          .login(
              email: _viewModel.loginModel?.email ?? "",
              password: _viewModel.loginModel?.password ?? "")
          .then((result) {
        switch (result.status) {
          case ResultStatus.success:
            Navigator.pushNamed(context, 'menu');
            break;
          case ResultStatus.error:
            if (result.error != null) {
              errorStateProvider.setFailure(
                  context: context, value: result.error!);
            }
            break;
        }
      });
    }
  }
}
